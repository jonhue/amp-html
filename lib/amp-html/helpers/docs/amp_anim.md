
# [Helpers](https://github.com/slooob/amp-html/tree/master/lib/amp-html/helpers/docs#amp-html-helpers) / `amp_anim`


## Information

`amp_anim` allows to use runtime-managed animated images, typically GIF's, in AMP documents.

---

### Quick info

#### Latest update: 0.6.1 (Pre-release) - 2017-03-19

[**Changelog for version 0.6.1**](https://github.com/slooob/amp-html/blob/master/CHANGELOG.md#061-pre-release---2017-03-19)

#### [DeepIntegration](https://github.com/slooob/amp-html/tree/master/lib/amp-html/helpers/docs#deepintegration-helpers): Disabled

#### [Availability](https://github.com/slooob/amp-html/tree/master/lib/amp-html/helpers/docs#availability-of-helpers): Installable with the [Animated Images Component](https://github.com/slooob/amp-html/tree/master/lib/amp-html/components/docs/anim.md)

#### [Takes a block?](https://github.com/slooob/amp-html/tree/master/lib/amp-html/helpers/docs#takes-a-block): Yes

---

## General

### Reference

[**AMP Reference**](https://www.ampproject.org/docs/reference/components/media/amp-anim)

#### Required Parameters

* `source`
* `size` (or `width` & `height`)

#### Structure

    <%= amp_anim(source, options) %>
    # <amp-anim src=source layout="responsive"></amp-ad>

**Note:** `layout` defaults to `responsive` if not explicitly permitted.


## Examples

Setting width & height:

    <%= amp_anim("my-gif.gif", width: 400, height: 300) %>
    <%= amp_anim("my-gif.gif", size: "400x300") %>
    # <amp-anim type="my-gif.gif" layout="responsive" width=400 height=300></amp-ad>

Setting a placeholder:

    <%= amp_anim("my-gif.gif", placeholder: "my-gif-screencap.jpg") %>
    # <amp-anim src="my-gif.gif" layout="responsive">
    #     <amp-img placeholder src="my-gif-screencap.jpg"></amp-img>
    # </amp-anim>

`amp_anim` also takes a block:

    <%= amp_anim("my-gif.gif", width: 400, height: 300) do %>
        <%= amp_placeholder("amp-anim", width: 400, height: 300, src: "my-gif-screencap.jpg") %>
    <% end %>
    # <amp-anim src="my-gif.gif" layout="responsive">
    #     <amp-img placeholder src="my-gif-screencap.jpg"></amp-img>
    # </amp-anim>

**References:** [`amp_placeholder`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_placeholder.md)
