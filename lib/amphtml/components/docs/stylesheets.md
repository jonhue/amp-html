
# [Components](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/components/docs) / Stylesheets


## Information

The AMP-HTML Stylesheets Component allows the use of stylesheets in AMP documents.

### Quick info

#### Latest component release: 0.6.1 (Pre-release) - 2017-03-19

[**Changelog for version 0.6.1**](https://github.com/jonhue/amphtml/blob/master/CHANGELOG.md#061-pre-release---2017-03-19)

#### Requirements

The Stylesheets Component does not depend on any other components.

#### Dependents

No other components depend on the Stylesheets Component.

#### [DeepIntegration](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/components/docs#deepintegration-components): Disabled

#### [Availability](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/components/docs#availability-of-components): Build-in


## Usage

By default every stylesheet (`.scss`) file inside of your `app/assets/stylesheets/amp` (depending on your AMP-HTML configuration) directory is included in your application layout.

You can include some view specific styles utilizing the `amp_css` helper in your `<head>` tag:

    <%= amp_css do %>
        /* Your CSS here */
    <% end %>

For a detailed reference on the `amp_css` helper, follow the link below.


### Helpers

The following helpers are usable with the Stylesheets Component of AMP-HTML

* [`amp_css`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_css.md)
* [`amp_global_css` (deprecated)](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_global_css.md)
