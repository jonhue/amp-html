
# AMP-HTML Helpers


## About Helpers

AMP-HTML helpers are an easy way to use AMP specific tags and features in your Ruby on Rails views.

### Takes a block?

Some helpers can "take a block", others cannot. If a helper can take a block, you can wrap it around of some other code-snippet:

    <%= i_am_a_wrapper do %>
        <%= i_am_inside_of_a_block %>
    <% end %>

### DeepIntegration Helpers

DeepIntegration helpers are parts of a [DeepIntegration component](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/components/docs#deepintegration-components).

### Availability of Helpers

The availability of helpers summarizes whether a helper is included in the vanilla version of AMP-HTML or if it needs to be installed as a part of a [component](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/components/docs) in order to get used.


## Helpers Reference

Take a look at the newest additions of components to AMP-HTML.

* [`amp_ad`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_ad.md)
* [`amp_analytics`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_analytics.md)
* [`amp_anim`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_anim.md)
* [`amp_audio`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_audio.md)
* [`amp_auto_ads`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_auto_ads.md)
* [`amp_close_user_notification_button`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_close_user_notification_button.md)
* [`amp_css`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_css.md)
* [`amp_embed`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_embed.md)
* [`amp_facebook`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_facebook.md)
* [`amp_fallback`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_fallback.md)
* [`amp_font_link`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_font_link.md)
* [`amp_font` (unavailable)](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_font.md)
* [`amp_global_css` (deprecated)](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_global_css.md)
* [`amp_google_analytics`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_google_analytics.md)
* [`amp_google_font`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_google_font.md)
* [`amp_head`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_head.md)
* [`amp_html_doctype`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_html_doctype.md)
* [`amp_iframe`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_iframe.md)
* [`amp_image`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_image.md)
* [`amp_instagram`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_instagram.md)
* [`amp_js`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_js.md)
* [`amp_link`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_link.md)
* [`amp_pixel`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_pixel.md)
* [`amp_placeholder`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_placeholder.md)
* [`amp_reddit`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_reddit.md)
* [`amp_social_share`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_social_share.md)
* [`amp_soundcloud`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_soundcloud.md)
* [`amp_twitter`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_twitter.md)
* [`amp_user_notification`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_user_notification.md)
* [`amp_video`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_video.md)
* [`amp_youtube`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_youtube.md)
* [`audio_tag`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/audio_tag.md)
* [`canonical_link`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/canonical_link.md)
* [`image_tag`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/image_tag.md)
* [`javascript_include_tag`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/javascript_include_tag.md)
* [`noscript_tag`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/noscript_tag.md)
* [`schema_tag`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/schema_tag.md)
* [`stylesheet_link_tag`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/stylesheet_link_tag.md)
* [`video_tag`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/video_tag.md)
