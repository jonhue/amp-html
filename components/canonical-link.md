# Canonical Link

Renders a link to the canonical document if SplitView is enabled.

### Usage

```haml
= component 'amp/canonical-link'
```

This translates to:

```html
<link rel="canonical" href="https://current-url.com?amp=false" />
```

### Options

You can pass any additional option to further customize the rendered element. Here is an overview of mandatory options and options offering special functionality:

* **`href`** The URL of the canonical version of the current document. Defaults to the current URL with `amp` as parameter if `amp` is the default format.
