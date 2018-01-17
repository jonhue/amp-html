# Fonts

**[Original documentation](https://www.ampproject.org/docs/reference/components/amp-font)**, **[Example](https://ampbyexample.com/components/amp-font)**

**Important:** In order to you use this component, you need to pass `:font` to the `amp/head` or the `amp/components` component.

### Usage

```haml
= component 'amp/font', font: { family: 'My Font' }
```

This translates to:

```html
<amp-font layout="nodisplay" font-family="My Font"></amp-font>
```

### Options

You can pass any additional option to further customize the rendered element. Here is an overview of mandatory options and options offering special functionality:

* **`layout`** Defaults to `'nodisplay'`.
