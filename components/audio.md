# Audio

**[Original documentation](https://www.ampproject.org/docs/reference/components/amp-audio)**, **[Example](https://ampbyexample.com/components/amp-audio)**

**Important:** In order to you use this component, you need to pass `:audio` to the `amp/head` or the `amp/components` component.

### Usage

```haml
= component 'amp/audio', src: 'myaudio.mp3'
```

This translates to:

```html
<amp-audio src="/asset-pipeline-path-or-url/myaudio.mp3"></amp-audio>
```

### Options

You can pass any additional option to further customize the rendered element. Here is an overview of mandatory options and options offering special functionality:

* **`src`** Source of the audio tag. Either this options or `sources` has to be set.
* **`sources`** Pass multiple sources to an audio tag. Accepts an array of hashes which have `src` and `type` as keys. They will be rendered inorder. Either this options or `src` has to be set. Example: `[{ type: 'audio/mpeg', src: 'foo.mp3' },{ type: 'audio/ogg', src: 'foo.ogg' }]`
* **`fallback`** A string to be displayed if an audio element does not work.
