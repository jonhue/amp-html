
# [Components](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/components/docs) / Advertisements BETA


## Information

The AMP-HTML Advertisement Component allows to easily embed ads with AMP, not hurting performance.

### Quick info

#### Latest component release: 0.5.4 (Pre-release) - 2017-03-19

[**Changelog for version 0.5.4**](https://github.com/jonhue/amphtml/blob/master/CHANGELOG.md#054-pre-release---2017-03-19)

#### Requirements

The Advertisement Component does not depend on any other components.

#### Dependents

No other components depend on the Advertisement Component.

#### [DeepIntegration](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/components/docs#deepintegration-components): Enabled

#### Availability: Installable


## Installation

Run in the command line:

    amphtml install ad

Now you are ready to use the Advertisement Component.

To learn more about this component, without opening the documentation, run:

    amphtml component ad


## Configuration

The Advertisement Component allows you to specify a default advertisement network for your app.

In your AMP-HTML configuration (`config/amphtml.yml`) search for the section of the Advertisement Component.

There you can set your default network like so:

    default_network: mywidget

You can always override this network default by passing a different network to your advertisement integration in your view.

A list of all by AMP supported advertisement networks: https://www.ampproject.org/docs/reference/components/ads/amp-ad#supported-ad-networks


## Usage

In your views you can add an advertisement as follows:

    <%= amp_ad(network) %>
    <%= amp_ad("mywidget", width: 300, height: 250, data: { aax_size: "300x250", aax_pubname: "test123", aax_src: "302" }) %>

Learn more about the `amp_ad` helper in the dedicated reference linked below.

---

To dynamically inject ads via a remotely-served configuration file use:

    <%= amp_auto_ads(type) %>
    <%= amp_auto_ads("adsense", data: { ad: { client: "ca-pub-5439573510495356" } }) %>


### Helpers

The following helpers are usable with the Advertisement Component of AMP-HTML

* [`amp_ad`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_ad.md)
* [`amp_embed`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_embed.md)
* [`amp_auto_ads`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_auto_ads.md)
