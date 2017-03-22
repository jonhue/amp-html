
# [Components](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/components/docs) / Service Worker BETA


## Information

The AMP-HTML Service Worker Component allows to install [ServiceWorker](https://developers.google.com/web/fundamentals/getting-started/primers/service-workers)'s in AMP documents.

---

### Quick info

#### Latest component release: 0.7.2 (Pre-release) - 2017-03-22

[**Changelog for version 0.7.2**](https://github.com/jonhue/amphtml/blob/master/CHANGELOG.md#072-pre-release---2017-03-22)

#### Requirements

The Service Worker Component does not depend on any other components.

#### Dependents

No other components depend on the Service Worker Component.

#### [DeepIntegration](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/components/docs#deepintegration-components): Disabled

#### [Availability](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/components/docs#availability-of-components): Installable

---

## Installation

Run in the command line:

    amphtml install service_worker

Now you are ready to use the Service Worker Component.

To learn more about this component, without opening the documentation, run:

    amphtml component service_worker


## Usage

In your views you can implement a ServiceWorker as follows:

    <%= amp_serviceworker(register_url, install_url, options) %>
    <%= amp_anim("https://www.your-domain.com/serviceworker.js", "https://www.your-domain.com/install-serviceworker.html") %>

Learn more about the `amp_serviceworker` helper in the dedicated reference linked below.

**References:** [`amp_placeholder`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_placeholder.md)


### Helpers

The following helpers are usable with the Service Worker Component of AMP-HTML

* [`amp_serviceworker`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_serviceworker.md)
