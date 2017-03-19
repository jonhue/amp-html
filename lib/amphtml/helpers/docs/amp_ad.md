
# [Helpers](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/helpers/docs#amp-html-helpers) / `amp_ad`


## Information

`amp_ad` allows to easily embed ads with AMP, not hurting performance.

### Quick info

#### Latest update: 0.5.4 (Pre-release) - 2017-03-19

[**Changelog for version 0.5.4**](https://github.com/jonhue/amphtml/blob/master/CHANGELOG.md#054-pre-release---2017-03-19)

#### [DeepIntegration](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/helpers/docs#deepintegration-helpers): Enabled

#### [Availability](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/helpers/docs#availability-of-helpers): Installable with the [Advertisements Component](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/components/docs/ad.md)

#### [Takes a block?](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/helpers/docs#takes-a-block): Yes

## General

### Reference

    <%= amp_ad(network, options) %>
    # <amp-ad type="NETWORK" layout="responsive"></amp-ad>

**Note:** `layout` defaults to `responsive` if not explicitly permitted.

Setting width & height:

    <%= amp_ad(network, width: X, height: Y) %>
    <%= amp_ad(network, size: "XxY") %>
    # <amp-ad type="NETWORK" layout="responsive" width=X height=Y></amp-ad>

Creating a sticky ad at the bottom of the viewport:

    <%= amp_ad(network, sticky: true) %>
    # <amp-sticky-ad layout="nodisplay">
    #     <amp-ad type="NETWORK" layout="responsive"></amp-ad>
    # </amp-sticky-ad>

Setting a placeholder:

    <%= amp_ad(network, placeholder: "path") %>
    # <amp-ad type="NETWORK" layout="responsive">
    #     <amp-img placeholder src="PATH"></amp-img>
    # </amp-ad>

Setting a fallback:

    <%= amp_ad(network, fallback: "path") %>
    # <amp-ad type="NETWORK" layout="responsive">
    #     <amp-img fallback src="PATH"></amp-img>
    # </amp-ad>

**Note:** Currently you can only pass `sticky` **or** `placeholder` **or** `fallback` as an option.

`amp_ad` also takes a block:

    <%= amp_ad(network, options) do %>
        <%= amp_placeholder("amp-img", src: "path") %>
        <%= amp_fallback("amp-img", src: "path") %>
    <% end %>
    # <amp-ad type="NETWORK" layout="responsive">
    #     <amp-img placeholder src="PATH"></amp-img>
    #     <amp-img fallback src="PATH"></amp-img>
    # </amp-ad>

**References:** [`amp_placeholder`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_placeholder.md), [`amp_fallback`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_fallback.md)


## Examples

Examples may be added in the future.
