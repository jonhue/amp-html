# Videos

**[Original documentation](https://www.ampproject.org/docs/reference/components/amp-video)**, **[Example](https://ampbyexample.com/components/amp-video)**

**Important:** In order to you use this component, you need to pass `:video` to the `amp/head` or the `amp/components` component.

### Usage

```haml
= component 'amp/video', src: 'videos/kitten-playing.webm', poster: 'images/kitten-playing.png'
```

This translates to:

```html
<amp-video layout="responsive" poster="/asset-pipeline-path-or-url/images/kitten-playing.png" src="/asset-pipeline-path-or-url/videos/kitten-playing.webm"></amp-video>
```

### Options

You can pass any additional option to further customize the rendered element. Here is an overview of mandatory options and options offering special functionality:

* **`src`** Source of the video tag. Either this options or `sources` has to be set.
* **`sources`** Pass multiple sources to a video tag. Accepts an array of hashes which have `src` and `type` as keys. They will be rendered inorder. Either this options or `src` has to be set. Example: `[{ type: 'video/webm', src: 'videos/kitten-playing.webm' },{ type: 'video/mp4', src: 'videos/kitten-playing.mp4' }]`
* **`fallback`** A string to be displayed if a video element does not work.
* **`layout`** Defaults to `'responsive'`.
