
# [Components](https://github.com/slooob/amp-html/tree/master/lib/amp-html/components/docs) / Social BETA


## Information

The AMP-HTML Social Component allows to embed content of various social-platforms and more in an AMP document.

---

### Quick info

#### Latest component release: 0.7.0 (Pre-release) - 2017-03-21

[**Changelog for version 0.7.0**](https://github.com/slooob/amp-html/blob/master/CHANGELOG.md#070-pre-release---2017-03-21)

#### Requirements

The Social Component does not depend on any other components.

#### Dependents

No other components depend on the Social Component.

#### [DeepIntegration](https://github.com/slooob/amp-html/tree/master/lib/amp-html/components/docs#deepintegration-components): Enabled

#### [Availability](https://github.com/slooob/amp-html/tree/master/lib/amp-html/components/docs#availability-of-components): Installable

---

## Installation

Run in the command line:

    amp-html install social

Now you are ready to use the Social Component.

To learn more about this component, without opening the documentation, run:

    amp-html component social


## Configuration

The Social Component allows you to specify a default provider for your app.

In your AMP-HTML configuration (`config/amp-html.yml`) search for the section of the Social Component.

There you can set your default network like so:

    default_provider: twitter

You can always override this provider default by passing a different provider to your social integration in your view.

A list of all by AMP preconfigured providers: https://github.com/ampproject/amp-html/blob/master/extensions/amp-social-share/0.1/amp-social-share-config.js

To use a provider that is not preconfigured by AMP, specify the default_data_share_endpoint:

    default_provider: whatsapp
    default_data_share_endpoint: whatsapp://send


## Usage

**The AMP-HTML Social Component introduces a lot of seperate helpers. To take a look at the functionality of each of them, take a look at their references, lnked below.**

### Examples: Embed a Tweet

You can embed a tweet like so:

    <%= amp_twitter(tweet_id) %>
    <%= amp_twitter("585110598171631616", width: 486, height: 657, data: { cards: "hidden" }) %>

It also takes a block:

    <%= amp_twitter("585110598171631616", width: 486, height: 657, data: { cards: "hidden" }) do %>
        <%= amp_placeholder("blockquote", class: "twitter-tweet" data: { lang: "en" }) do %>
            <p lang="en" dir="ltr">The story how I became what some people would call a frontend engineer and an exploration into what that even means<a href="https://t.co/HrVz4cGMWG">https://t.co/HrVz4cGMWG</a></p>&mdash; Malte Ubl (@cramforce) <a href="https://twitter.com/cramforce/status/585110598171631616">April 6, 2015</a>
        <% end %>
    <% end %>

Learn more about the `amp_twitter` helper in the dedicated reference linked below.

**References:** [`amp_placeholder`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_placeholder.md)

### Examples: Social Share

It is that easy to create a social share button:

    <%= amp_social_share(type) %>
    <%= amp_social_share("twitter") %>

It assumes that the current document canonical url is the URL you want to share and the page title is the text you want to share.

When you want to pass parameters to the share endpoint, you can specify `data-param-<attribute>` that will be appended to the share endpoint.

    <%= amp_social_share("linkedin", width: "60", height: "44", data: { param: { text: "Hello world", url: "https://railsamp.com/" } }) %>

If the provider is not preconfigured ([preconfigured providers](https://github.com/ampproject/amp-html/blob/master/extensions/amp-social-share/0.1/amp-social-share-config.js)):

    <%= amp_social_share("whatsapp", width: "60", height: "44", data: { share: { endpoint: "whatsapp://send" } param: { text: "Check out this article: TITLE - CANONICAL_URL" } }) %>

It also takes a block:

    <%= amp_social_share("whatsapp", width: "60", height: "44", data: { share: { endpoint: "whatsapp://send" } param: { text: "Check out this article: TITLE - CANONICAL_URL" } }) do %>
        Share on Whatsapp
    <% end %>

Learn more about the `amp_social_share` helper in the dedicated reference linked below.

**References:** [AMP HTML URL Variable Substitutions](https://github.com/ampproject/amp-html/blob/master/spec/amp-var-substitutions.md)


### Helpers

The following helpers are usable with the Social Component of AMP-HTML

* [`amp_twitter`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_twitter.md)
* [`amp_instagram`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_instagram.md)
* [`amp_facebook`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_facebook.md)
* [`amp_youtube`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_youtube.md)
* [`amp_reddit`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_reddit.md)
* [`amp_social_share`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_social_share.md)
* [`amp_soundcloud`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_soundcloud.md)
* [`amp_vine`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_vine.md)
* [`amp_gfycat`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_gfycat.md)
* [`amp_pin_it`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_pin_it.md)
* [`amp_pin_widget`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_pin_widget.md)
* [`amp_pinterest_follow`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_pinterest_follow.md)
