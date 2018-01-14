# Forms

**[Original documentation](https://www.ampproject.org/docs/reference/components/amp-form)**, **[Example](https://ampbyexample.com/components/amp-form/)**

### Usage

```haml
= component 'amp/form', action: 'http://localhost:3000' do
    -# ...
```

This translates to:

```html
<form method="post" target="_top" action-xhr="http://localhost:3000">
    <!-- ... -->
</form>
```

### Options

You can pass any additional option to further customize the rendered element. Here is an overview of mandatory options and options offering special functionality:

* **`action` (mandatory)** The target URL for the request when a form gets submitted. When the form `method` is not `get`, an `action-xhr` attribute will be used instead of the default `action` attribute. [Learn more](https://www.ampproject.org/docs/reference/components/amp-form#action).
* **`method`** Forms `method` attribute. Defaults to `:post`.
* **`target`** Forms `target` attribute. Must be either `'_top'` or `'_blank'`. Defaults to `'_top'`.
* **`submit`** Code to be run when a form gets submitted.
* **`success`** Code to be run when a form submit has been successful.
* **`error`** Code to be run when a form submit has been unsuccessful.
* **`valid`** Code to be run when the state of a form changes to `valid`.
* **`invalid`** Code to be run when the state of a form changes to `invalid`.
