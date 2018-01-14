
# [Components](https://github.com/slooob/amp-html/tree/master/lib/amp-html/components/docs) / Fonts BETA


## Information

The AMP-HTML Fonts Component allows to include stylesheets for custom fonts without using `@font-face`.

---

### Quick info

#### Latest component release: 0.6.1 (Pre-release) - 2017-03-19

[**Changelog for version 0.6.1**](https://github.com/slooob/amp-html/blob/master/CHANGELOG.md#061-pre-release---2017-03-19)

#### Requirements

The Fonts Component does not depend on any other components.

#### Dependents

No other components depend on the Fonts Component.

#### [DeepIntegration](https://github.com/slooob/amp-html/tree/master/lib/amp-html/components/docs#deepintegration-components): Disabled

#### [Availability](https://github.com/slooob/amp-html/tree/master/lib/amp-html/components/docs#availability-of-components): Build-in

---

## Usage

In your views you include a custom font as follows:

    <%= amp_font_link(href) %>
    <%= amp_font_link("https://fonts.googleapis.com/css?family=Roboto") %>

**Note:** Font providers need to be whitelisted. All whitelisted font providers: https://github.com/ampproject/amp-html/blob/master/spec/amp-html-format.md#custom-fonts

Learn more about the `amp_font_link` helper in the dedicated reference linked below.

### Google Fonts

AMP-HTML offers an easy-to-use integration of Google Fonts.

You can include any font of https://fonts.google.com as follows:

    <%= amp_google_font(family) %>
    <%= amp_google_font("Roboto") %>

This will only serve the default width and style. You can be more specific:

    <%= amp_google_font("Roboto", [100i,400,900]) %>

Learn more about the `amp_google_font` helper in the dedicated reference linked below.


### Helpers

The following helpers are usable with the Fonts Component of AMP-HTML

* [`amp_font_link`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_font_link.md)
* [`amp_google_font`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_google_font.md)
