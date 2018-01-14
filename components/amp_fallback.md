
# [Helpers](https://github.com/slooob/amp-html/tree/master/lib/amp-html/helpers/docs#amp-html-helpers) / `amp_fallback`


## Information

`amp_fallback` allows to create AMP-HTML fallbacks for any HTML or AMP tag.

---

### Quick info

#### Latest update: 0.5.0 (Pre-release) - 2017-03-18

[**Changelog for version 0.5.0**](https://github.com/slooob/amp-html/blob/master/CHANGELOG.md#050-pre-release---2017-03-18)

#### [DeepIntegration](https://github.com/slooob/amp-html/tree/master/lib/amp-html/helpers/docs#deepintegration-helpers): Disabled

#### [Availability](https://github.com/slooob/amp-html/tree/master/lib/amp-html/helpers/docs#availability-of-helpers): Build-in

#### [Takes a block?](https://github.com/slooob/amp-html/tree/master/lib/amp-html/helpers/docs#takes-a-block): Yes

---

## General

### Reference

<!-- [**AMP Reference**](https://www.ampproject.org/docs/reference/components/ads/amp-ad) -->

#### Required Parameters

* `name`

#### Structure

    <%= amp_fallback(name, options) %>
    # <name fallback></name>


## Examples

`amp_fallback` also takes a block:

    <%= amp_fallback("div", layout: "nodisplay") do %>
        <p>Hello AMP</p>
    <% end %>
