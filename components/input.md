# Inputs

**[Original documentation](https://www.ampproject.org/docs/reference/components/amp-form)**, **[Example](https://ampbyexample.com/components/amp-form)**

**Important:** In order to you use this component, you need to pass `:form` to the `amp/head` or the `amp/components` component.

### Usage

```haml
= component 'amp/input', type: 'text', name: 'name' do
    -# ...
```

This translates to:

```html
<input type="text" name="name" />
```

### Options

You can pass any additional option to further customize the rendered element. Here is an overview of mandatory options and options offering special functionality:

* **`onchange`** Code to be run when an inputs value changes.
