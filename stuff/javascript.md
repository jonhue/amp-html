
# [Components](https://github.com/slooob/amp-html/tree/master/lib/amp-html/components/docs) / Javascript BETA


## Information

The AMP-HTML Javascript Component allows the use of javascript assets in AMP documents.

---

### Quick info

#### Latest component release: 0.6.0 (Pre-release) - 2017-03-19

[**Changelog for version 0.6.0**](https://github.com/slooob/amp-html/blob/master/CHANGELOG.md#060-pre-release---2017-03-19)

#### Requirements

The Javascript Component depends on the [AMP-HTML Iframe Component](https://github.com/slooob/amp-html/tree/master/lib/amp-html/components/docs/iframe.md).

#### Dependents

No other components depend on the Javascript Component.

#### [DeepIntegration](https://github.com/slooob/amp-html/tree/master/lib/amp-html/components/docs#deepintegration-components): Disabled

#### [Availability](https://github.com/slooob/amp-html/tree/master/lib/amp-html/components/docs#availability-of-components): Installable

---

## Installation

Run in the command line:

    amp-html install javascript

Now you are ready to use the Javascript Component.

To learn more about this component, without opening the documentation, run:

    amp-html component javascript


## Configuration

In your AMP-HTML configuration (`config/amp-html.yml`) search for the section of the Assets Configuration.

There you can specify whether javascript-assets outside of the `assets/#{type}/amp` are precompiled or not:

    only_amp: true

If you set it to `true`, only assets inside the amp directory are precompiled. It defaults to `true`. If SplitView is enabled it defaults to `false`.


## Usage

By default every javascript (`.js`) file inside of your `app/assets/javascripts/amp` (depending on your AMP-HTML configuration) directory is included in your application layout.

You can include some external javascript utilizing the `amp_js` helper in your `<head>` tag:

    <%= amp_js(source) %>
    <%= amp_js("https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js") %>

For a detailed reference on the `amp_js` helper, follow the link below.


### Helpers

The following helpers are usable with the Javascript Component of AMP-HTML

* [`amp_js`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_js.md)
