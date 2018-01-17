# Selectors

**[Original documentation](https://www.ampproject.org/docs/reference/components/amp-selector)**, **[Example](https://ampbyexample.com/components/amp-selector)**

**Important:** In order to you use this component, you need to pass `:selector` to the `amp/head` or the `amp/components` component.

### Usage

```haml
= component 'amp/selector', name: 'single_image_select' do
    -# ...
```

This translates to:

```html
<amp-selector layout="container" name="single_image_select">
    <!-- ... -->
</amp-selector>
```

### Options

You can pass any additional option to further customize the rendered element. Here is an overview of mandatory options and options offering special functionality:

* **`layout`** Defaults to `'container'`.
* **`onchange`** Code to be run when a selectors value changes.
