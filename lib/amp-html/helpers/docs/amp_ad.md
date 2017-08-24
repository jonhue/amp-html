
# [Helpers](https://github.com/slooob/amp-html/tree/master/lib/amp-html/helpers/docs#amp-html-helpers) / `amp_ad`


## Information

`amp_ad` allows to easily embed ads with AMP, not hurting performance.

---

### Quick info

#### Latest update: 0.5.4 (Pre-release) - 2017-03-19

[**Changelog for version 0.5.4**](https://github.com/slooob/amp-html/blob/master/CHANGELOG.md#054-pre-release---2017-03-19)

#### [DeepIntegration](https://github.com/slooob/amp-html/tree/master/lib/amp-html/helpers/docs#deepintegration-helpers): Enabled

#### [Availability](https://github.com/slooob/amp-html/tree/master/lib/amp-html/helpers/docs#availability-of-helpers): Installable with the [Advertisements Component](https://github.com/slooob/amp-html/tree/master/lib/amp-html/components/docs/ad.md)

#### [Takes a block?](https://github.com/slooob/amp-html/tree/master/lib/amp-html/helpers/docs#takes-a-block): Yes

---

## General

### Reference

[**AMP Reference**](https://www.ampproject.org/docs/reference/components/ads/amp-ad)

#### Required Parameters

* `network` (if not set in the AMP-HTML configuration)
* `size` (or `width` & `height`)

#### Structure

    <%= amp_ad(network, options) %>
    # <amp-ad type=network layout="responsive"></amp-ad>

**Note:** `layout` defaults to `responsive` if not explicitly permitted.


## Examples

Setting width & height:

    <%= amp_ad("a9", width: 400, height: 300) %>
    <%= amp_ad("a9", size: "400x300") %>
    # <amp-ad type="a9" layout="responsive" width=400 height=300></amp-ad>

Creating a sticky ad at the bottom of the viewport:

    <%= amp_ad("a9", sticky: true) %>
    # <amp-sticky-ad layout="nodisplay">
    #     <amp-ad type="a9" layout="responsive"></amp-ad>
    # </amp-sticky-ad>

Setting a placeholder:

    <%= amp_ad("a9", placeholder: "my-ad-screencap.jpg") %>
    # <amp-ad type="a9" layout="responsive">
    #     <amp-img placeholder src="my-ad-screencap.jpg"></amp-img>
    # </amp-ad>

Setting a fallback:

    <%= amp_ad("a9", fallback: "my-ad-screencap.jpg") %>
    # <amp-ad type="a9" layout="responsive">
    #     <amp-img fallback src="my-ad-screencap.jpg"></amp-img>
    # </amp-ad>

**Note:** Currently you can only pass `sticky` **or** `placeholder` **or** `fallback` as an option.

`amp_ad` also takes a block:

    <%= amp_ad("a9", options) do %>
        <%= amp_placeholder("amp-img", src: "my-ad-screencap.jpg") %>
        <%= amp_fallback("amp-img", src: "my-ad-screencap.jpg") %>
    <% end %>
    # <amp-ad type="a9" layout="responsive">
    #     <amp-img placeholder src="my-ad-screencap.jpg"></amp-img>
    #     <amp-img fallback src="my-ad-screencap.jpg"></amp-img>
    # </amp-ad>

**References:** [`amp_placeholder`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_placeholder.md), [`amp_fallback`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_fallback.md)
