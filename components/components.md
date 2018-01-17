# Audio

Add AMP components to your document.

### Usage

```haml
= component 'amp/components', components: [:form, :audio]
```

This translates to:

```html
<script async custom-element="amp-form" src="https://cdn.ampproject.org/v0/amp-form-0.1.js"></script>
<script async custom-element="amp-audio" src="https://cdn.ampproject.org/v0/amp-audio-0.1.js"></script>
```

Supported components:

* `:audio`
* `:font`
* `:form`
* `:mustache`
* `:selector`
* `:video`

This component can be used to override any previous adding of components:

```haml
-# Override
= replace :components do
    = component 'amp/components', components: [:form, :audio]

-# Extend
= append :components do
    = component 'amp/components', components: [:form, :audio]
```

### Options

You can pass any additional option to further customize the rendered element. Here is an overview of mandatory options and options offering special functionality:

* **`components` (mandatory)** Array of components to be included in the current document.
