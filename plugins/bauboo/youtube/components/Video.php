<?php

namespace Bauboo\YouTube\Components;

use Bauboo\YouTube\Models\Settings;
use Cms\Classes\ComponentBase;
use Illuminate\Support\Facades\Lang;
use October\Rain\Support\Facades\Config;

class Video extends ComponentBase
{
	/**
	 * {@inheritdoc}
	 */
	public function componentDetails(): array
	{
		return [
			'name' => 'bauboo.youtube::lang.component.name',
			'description' => 'bauboo.youtube::lang.component.description',
		];
	}

	/**
	 * {@inheritdoc}
	 */
	public function defineProperties(): array
	{
		$css_units = '%|em|ex|ch|rem|cm|mm|q|in|pt|pc|px|vw|vh|vmin|vmax';
		$width_regex = '^(auto|0)$|^\d+(\.\d+)?('.$css_units.')?$';

		return [
			'videoId' => [
				'title' => 'bauboo.youtube::lang.component.videoId.title',
				'description' => 'bauboo.youtube::lang.component.videoId.description',
				'type' => 'string',
				'validationPattern' => '^[A-Za-z0-9_\-]{11}$',
				'validationMessage' => 'bauboo.youtube::lang.component.videoId.validationMessage',
				'default' => 'dQw4w9WgXcQ',
				'required' => true,
			],
			'playerControls' => [
				'title' => 'bauboo.youtube::lang.component.playerControls.title',
				'description' => 'bauboo.youtube::lang.component.playerControls.description',
				'type' => 'checkbox',
				'default' => true,
			],
			'privacyMode' => [
				'title' => 'bauboo.youtube::lang.component.privacyMode.title',
				'description' => 'bauboo.youtube::lang.component.privacyMode.description',
				'type' => 'checkbox',
				'default' => true,
			],
			'responsive' => [
				'title' => 'bauboo.youtube::lang.component.responsive.title',
				'description' => 'bauboo.youtube::lang.component.responsive.description',
				'default' => '16x9',
				'type' => 'dropdown',
				'options' => [
					'not' => 'bauboo.youtube::lang.component.responsive.options.not',
					'1x1' => 'bauboo.youtube::lang.component.responsive.options.1x1',
					'4x3' => 'bauboo.youtube::lang.component.responsive.options.4x3',
					'16x9' => 'bauboo.youtube::lang.component.responsive.options.16x9',
					'21x9' => 'bauboo.youtube::lang.component.responsive.options.21x9',
				],
			],
			'width' => [
				'title' => 'bauboo.youtube::lang.component.width.title',
				'description' => 'bauboo.youtube::lang.component.width.description',
				'default' => '560',
				'type' => 'string',
				'validationPattern' => $width_regex,
				'validationMessage' => 'bauboo.youtube::lang.component.width.validationMessage',
			],
			'height' => [
				'title' => 'bauboo.youtube::lang.component.height.title',
				'description' => 'bauboo.youtube::lang.component.height.description',
				'default' => '315',
				'type' => 'string',
				'validationPattern' => $width_regex,
				'validationMessage' => 'bauboo.youtube::lang.component.height.validationMessage',
			],
		];
	}

	/** @var bool True means Bootstrap 5.x, false means Bootstrap 4.x. */
	public $bootstrap5 = false;
	/** @var bool Whether an error has occured. */
	protected $hasError = false;
	/** @var string YouTube video ID. */
	public $videoId;
	/** @var bool Whether the video is displayed responsive or fixed size. */
	public $isResponsive;
	/** @var string If `$isResponsive` is true, this is the aspect ratio. */
	public $responsiveRatio;
	/** @var string Video width, if not responsive. */
	public $width;
	/** @var string Video height, if not responsive. */
	public $height;
	/** @var bool Whether player controls are displayed. */
	public $playerControls;
	/** @var bool Whether privacy mode is activated. */
	public $privacyMode;
	/** @var array See example data at `getData()` method. */
	public $data;
	/** @var string Holds error information if an error occurs and the settings ask for it. */
	public $error;

	/**
	 * {@inheritdoc}
	 */
	public function onRun(): void
	{
		$this->bootstrap5 = Settings::get('is_bootstrap_5', '');

		$this->videoId = $this->property('videoId');
		$this->isResponsive = 'not' !== $this->property('responsive');
		$responsiveRatio = $this->property('responsive');
		// First transformation needed for backwards compatibility.
		// Old videos still have '16x9' stored as value. TODO: drop support for this eventually.
		$this->responsiveRatio = $this->bootstrap5 ? str_replace('by', 'x', $responsiveRatio) : str_replace('x', 'by', $responsiveRatio);
		$this->width = $this->property('width');
		$this->height = $this->property('height');
		$this->playerControls = (bool) $this->property('playerControls');
		$this->privacyMode = (bool) $this->property('privacyMode');
		$data = $this->getData();
		if (!$this->hasError) {
			$data = $this->convert($data);
		}
		$this->data = $data;
	}

	/**
	 * Fetch data about the YouTube video from YouTube API.
	 * It also sets the `$error` property if an error occurs and the settings allow it.
	 *
	 * @return array Associative array, see example below.
	 *
	 * @example // example data, returned as associative array
	 * [
	 *     "publishedAt" => "2009-10-25T06:57:33Z"
	 *     "channelId" => "UC38IQsAvIsxxjztdMZQtwHA"
	 *     "title" => "Rick Astley - Never Gonna Give You Up (Video)"
	 *     "description" => " ... "
	 *     "thumbnails" => [
	 *         "default" => [
	 *             "url" => "https://i.ytimg.com/vi/dQw4w9WgXcQ/default.jpg"
	 *             "width" => 120
	 *             "height" => 90
	 *         ]
	 *         "..." => [ ... ]
	 *     ]
	 *     "channelTitle" => "RickAstleyVEVO"
	 *     "tags" => [ ... ]
	 *     "categoryId" => "10"
	 *     "liveBroadcastContent" => "none"
	 *     "localized" => [
	 *         "title" => "Rick Astley - Never Gonna Give You Up (Video)"
	 *         "description" => " ... "
	 *     ]
	 *     "defaultAudioLanguage" => "en-US"
	 * ]
	 */
	protected function getData(): array
	{
		$apiKey = Settings::get('api_key', '');
		$url = 'https://www.googleapis.com/youtube/v3/videos?id='.$this->videoId.'&part=snippet&key='.$apiKey;
		$curl = curl_init($url);
		curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($curl, CURLOPT_REFERER, Config::get('app.url', ''));
		$data = curl_exec($curl);
		$st_code = curl_getinfo($curl, CURLINFO_HTTP_CODE);
		curl_close($curl);
		$data = json_decode($data, true);
		$error = '';
		if (200 == $st_code) {
			if (count($data['items']) > 0) {
				return $data['items'][0]['snippet'];
			} else {
				$error = Lang::get('bauboo.youtube::lang.component.no_video_with_id')."'".$this->videoId."'";
			}
		} else {
			$error = $data['error']['message'];
		}
		$this->hasError = true;
		if (Settings::get('display_error', false)) {
			$this->error = $error;
		}

		return [];
	}

	/**
	 * Escape all html chars and replace all `\n` with `<br />` in `description`.
	 */
	protected function convert(array $data): array
	{
		$data['description'] = htmlspecialchars($data['description']);
		$data['description'] = str_replace("\n", '<br />', $data['description']);

		return $data;
	}
}
