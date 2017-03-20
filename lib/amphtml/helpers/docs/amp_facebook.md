
# [Helpers](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/helpers/docs#amp-html-helpers) / `amp_facebook`


## Information

`amp_facebook` allows to easily embed ads with AMP, not hurting performance.

---

### Quick info

#### Latest update: 0.6.2 (Pre-release) - 2017-03-20

[**Changelog for version 0.6.2**](https://github.com/jonhue/amphtml/blob/master/CHANGELOG.md#062-pre-release---2017-03-20)

#### [DeepIntegration](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/helpers/docs#deepintegration-helpers): Disabled

#### [Availability](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/helpers/docs#availability-of-helpers): Installable with the [Social Component](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/components/docs/social.md)

#### [Takes a block?](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/helpers/docs#takes-a-block): Yes

---

## General

### Reference

[**AMP Reference**](https://www.ampproject.org/docs/reference/components/social/amp-facebook)

#### Required Parameters

* `href`
* `size` (or `width` & `height`)

#### Structure

    <%= amp_facebook(href, options) %>
    # <amp-facebook data-href=href layout="responsive"></amp-facebook>

**Note:** `layout` defaults to `responsive` if not explicitly permitted.


## Examples

Setting width & height:

    <%= amp_facebook("https://www.facebook.com/zuck/posts/10102593740125791", width: 486, height: 657) %>
    <%= amp_facebook("https://www.facebook.com/zuck/posts/10102593740125791", size: "486x657") %>
    # <amp-facebook data-href="https://www.facebook.com/zuck/posts/1010259374012579"1 layout="responsive" width=486 height=657></amp-facebook>

Embedding a post:

    <%= amp_facebook("https://www.facebook.com/zuck/posts/10102593740125791", width: 486, height: 657) %>
    # <amp-facebook data-href="https://www.facebook.com/zuck/posts/10102593740125791" layout="responsive" width=400 height=300></amp-facebook>

Embedding a video:

    <%= amp_facebook("https://www.facebook.com/zuck/posts/10102593740125791", type: "video", width: 486, height: 657 ) %>
    # <amp-facebook data-href="https://www.facebook.com/zuck/posts/10102593740125791" data-embed-as="video" layout="responsive" width=400 height=300></amp-facebook>

`amp_facebook` also takes a block:

    <%= amp_facebook("https://www.facebook.com/zuck/posts/10102593740125791", width: 486, height: 657) do %>
        <%= amp_placeholder("blockquote", class: "facebook-post") do %>
            <p>The story how I became what some people would call a frontend engineer and an exploration into what that even means</p>
        <% end %>
    <% end %>

**References:** [`amp_placeholder`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_placeholder.md)
