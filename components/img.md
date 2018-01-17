# Images

**[Original documentation](https://www.ampproject.org/docs/reference/components/amp-img)**, **[Example](https://ampbyexample.com/components/amp-img)**

### Usage

```haml
= component 'amp/img', src: 'images/sea.jpg'
```

This translates to:

```html
<amp-img src="/asset-pipeline-path-or-url/images/sea.jpg" layout="responsive"></amp-img>
```

### Options

You can pass any additional option to further customize the rendered element. Here is an overview of mandatory options and options offering special functionality:

* **`src` (mandatory)** Source of the image tag.
* **`layout`** Defaults to `'responsive'`.
