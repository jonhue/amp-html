# AMP Link

Renders a link to an AMP document if SplitView is enabled.

### Usage

```haml
= component 'amp/amp-link'
```

This translates to:

```html
<link rel="amphtml" href="https://current-url.com?amp=true" />
```

### Options

You can pass any additional option to further customize the rendered element. Here is an overview of mandatory options and options offering special functionality:

* **`href`** The URL of the AMP version of the current document. Defaults to the current URL with `amp` as parameter if `amp` is not the default format.
