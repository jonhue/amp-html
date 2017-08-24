
# [Components](https://github.com/slooob/amp-html/tree/master/lib/amp-html/components/docs) / Mustache.js


## Information

The AMP-HTML Mustache.js Component allows rendering of templates with `{{mustaches}}`.

---

### Quick info

#### Latest component release: 0.7.3 (Pre-release) - 2017-03-22

[**Changelog for version 0.7.3**](https://github.com/slooob/amp-html/blob/master/CHANGELOG.md#073-pre-release---2017-03-22)

#### Requirements

The Mustache.js Component does not depend on any other components.

#### Dependents

The [AMP-HTML Forms Component](https://github.com/slooob/amp-html/tree/master/lib/amp-html/components/docs/forms.md) depends on the Mustache.js Component.

#### [DeepIntegration](https://github.com/slooob/amp-html/tree/master/lib/amp-html/components/docs#deepintegration-components): Disabled

#### [Availability](https://github.com/slooob/amp-html/tree/master/lib/amp-html/components/docs#availability-of-components): Build-in

---

## Usage

In your views you can create a Mustache.js template as follows:

    <%= amp_mustache do %>
        Hello {{world}}!
    <% end %>

Learn more about the `amp_mustache` helper in the dedicated reference linked below.


### Helpers

The following helpers are usable with the Mustache.js Component of AMP-HTML

* [`amp_mustache`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_mustache.md)
