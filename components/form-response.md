# Form Responses

**[Original documentation](https://www.ampproject.org/docs/reference/components/amp-form#success/error-response-rendering)**

**Important:** In order to you use this component, you need to pass `:form` to the `amp/head` or the `amp/components` component.

### Usage

```haml
= component 'amp/form-response' do
    -# ...
```

This translates to:

```html
<div submit-success>
    <template type="amp-mustache">
        <!-- ... -->
    </template>
</div>
```

### Options

You can pass any additional option to further customize the rendered element. Here is an overview of mandatory options and options offering special functionality:

* **`type`** Response type. Has to be either `:success` or `:error`. Defaults to `:success`.
