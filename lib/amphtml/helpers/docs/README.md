
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

---

## Helpers Reference

Take a look at the references of the helpers of AMP-HTML.

### Built-in

* [`amp_audio` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_audio.md)
* [`amp_css`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_css.md)
* [`amp_css_link` (in development)](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_css_link.md)
* [`amp_document_link` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_document_link.md)
* [`amp_fallback` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_fallback.md)
* [`amp_font_link` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_font_link.md)
* [`amp_global_css` (deprecated)](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_global_css.md)
* [`amp_google_font` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_google_font.md)
* [`amp_head`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_head.md)
* [`amp_html_doctype`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_html_doctype.md)
* [`amp_image` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_image.md)
* [`amp_link` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_link.md)
* [`amp_placeholder` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_placeholder.md)
* [`amp_resources` (deprecated)](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_resources.md)
* [`amp_video` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_video.md)
* [`amp?` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp.md)
* [`audio_tag`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/audio_tag.md)
* [`canonical_document_link` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/canonical_document_link.md)
* [`image_tag`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/image_tag.md)
* [`javascript_include_tag`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/javascript_include_tag.md)
* [`noscript_tag`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/noscript_tag.md)
* [`schema_tag`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/schema_tag.md)
* [`stylesheet_link_tag`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/stylesheet_link_tag.md)
* [`video_tag`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/video_tag.md)

### Installable

* [`amp_ad` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_ad.md)
* [`amp_analytics` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_analytics.md)
* [`amp_anim` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_anim.md)
* [`amp_auto_ads` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_auto_ads.md)
* [`amp_close_user_notification_button` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_close_user_notification_button.md)
* [`amp_custom_ad` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_custom_ad.md)
* [`amp_embed` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_embed.md)
* [`amp_facebook` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_facebook.md)
* [`amp_font` (in development)](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_font.md)
* [`amp_gfycat` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_gfycat.md)
* [`amp_google_analytics` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_google_analytics.md)
* [`amp_iframe` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_iframe.md)
* [`amp_instagram` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_instagram.md)
* [`amp_js` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_js.md)
* [`amp_pin_it` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_pin_it.md)
* [`amp_pin_widget` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_pin_widget.md)
* [`amp_pinterest_follow` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_pinterest_follow.md)
* [`amp_pixel` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_pixel.md)
* [`amp_reddit` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_reddit.md)
* [`amp_social_share` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_social_share.md)
* [`amp_soundcloud` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_soundcloud.md)
* [`amp_twitter` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_twitter.md)
* [`amp_user_notification` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_user_notification.md)
* [`amp_video_ad` (in development)](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_video_ad.md)
* [`amp_vine` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_vine.md)
* [`amp_youtube` BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_youtube.md)
