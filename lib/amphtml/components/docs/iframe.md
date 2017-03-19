
# [Components](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/components/docs) / Iframe BETA


## Information

The AMP-HTML Iframe Component allows to use iframes similar to the HTML `<iframe>` tag in AMP documents.

### Quick info

#### Latest component release: 0.4.1 (Pre-release) - 2017-03-16

[**Changelog for version 0.4.1**](https://github.com/jonhue/amphtml/blob/master/CHANGELOG.md#041-pre-release---2017-03-16)

#### Requirements

The Iframe Component does not depend on any other components.

#### Dependents

The [AMP-HTML Javascript Component](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/components/docs/javascript.md) depends on the Iframe Component.

#### [DeepIntegration](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/components/docs#deepintegration-components): Disabled

#### [Availability](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/components/docs#availability-of-components): Installable


## Installation

Run in the command line:

    amphtml install iframe

Now you are ready to use the Iframe Component.

To learn more about this component, without opening the documentation, run:

    amphtml component iframe


## Usage

In your views you can create an iframe as follows:

    <%= amp_iframe(source) %>
    <%= amp_iframe("https://railsamp.com", width: 300, height: 300, sandbox: "allow-scripts allow-same-origin") %>

**Note:** `amp_iframe` must only request resources via HTTPS or from a data-URI or via the `srcdoc` attribute.

Learn more about the `amp_iframe` helper in the dedicated reference linked below.


### Helpers

The following helpers are usable with the Iframe Component of AMP-HTML

* [`amp_iframe`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_iframe.md)
