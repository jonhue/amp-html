# Mustache.js

**[Original documentation](https://www.ampproject.org/docs/reference/components/amp-mustache)**, **[Example](https://ampbyexample.com/components/amp-mustache)**

**Important:** In order to you use this component, you need to pass `:mustache` to the `amp/head` or the `amp/components` component.

### Usage

```haml
= component 'amp/mustache' do
    -# ...
```

This translates to:

```html
<template type="amp-mustache">
    <!-- ... -->
</template>
```

### Options

You can pass any additional option to further customize the rendered element. Here is an overview of mandatory options and options offering special functionality:

* **`type`** Is `'amp-mustache'`.
