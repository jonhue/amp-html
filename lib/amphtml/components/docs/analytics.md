
# Components / Analytics BETA


## Information

The AMP-HTML Analytics Component allows to integrate with venders to measure activity on AMP documents.

### Quick info

#### Latest component release: 0.4.2 (Pre-release) - 2017-03-17

[**Changelog for version 0.4.2**](https://github.com/jonhue/amphtml/blob/master/CHANGELOG.md#042-pre-release---2017-03-17)

#### Requirements

The Analytics Component does not depend on any other components.

#### Dependents

No other components depend on the Analytics Component.

#### DeepIntegration: Enabled


## Installation

Run in the command line:

    amphtml install analytics

Now you are ready to use the Analytics Component.

To learn more about this component, without opening the documentation, run:

    amphtml component analytics


## Configuration

The Analytics Component allows you to specify a default analytics vendor for your app.

In your AMP-HTML configuration (`config/amphtml.yml`) search for the section of the Analytics Component.

There you can set your default network like so:

    default_vendor: parsely

You can always override this vendor default by passing a different vendor to your analytics integration in your view.

A list of all by AMP supported analytics vendors: https://www.ampproject.org/docs/reference/components/ads/amp-analytics#analytics-vendors

---

With DeepIntegration you can also easily setup your **Google Analytics** account.

Therefore configure your Google Analytics id in your AMP-HTML configuration:

    google_analytics:
        account: UA-*****-*


## Usage

In your views you can setup analytics as follows:

    <%= amp_analytics(vendor) %>
    <%= amp_analytics do %>
        <script type="application/json">
            {
                "requests": {
                    "pageview": "https://example.com/analytics?url=${canonicalUrl}&title=${title}&acct=${account}",
                    "event": "https://example.com/analytics?eid=${eventId}&elab=${eventLabel}&acct=${account}"
                },
                "vars": {
                    "account": "ABC123"
                },
                "triggers": {
                    "trackPageview": {
                        "on": "visible",
                        "request": "pageview"
                    },
                    "trackAnchorClicks": {
                        "on": "click",
                        "selector": "a",
                        "request": "event",
                        "vars": {
                            "eventId": "42",
                            "eventLabel": "clicked on a link"
                        }
                    }
                }
            }
        </script>
    <% end %>

To learn how to setup analytics for a specific vendor, reference the AMP documentation: https://www.ampproject.org/docs/reference/components/ads/amp-analytics#analytics-vendors

Learn more about the `amp_analytics` helper in the dedicated reference linked below.

---

To setup Google Analytics, you need to first set your account in the AMP-HTML configuration. Then add to your view:

    <%= amp_google_analytics %>

By default the component just listens for pageviews. You can also set complex triggers:

    <%= amp_google_analytics(triggers: { "trackPageviewWithCustomUrl": { on: "visible", request: "pageview", vars: { title: "My page", document_location: "https://www.examplepetstore.com/pets.html" } } }) %>

Learn more about creating triggers for Google Analytics: https://developers.google.com/analytics/devguides/collection/amp-analytics/

---

You can use the `amp_pixel` helper to track user behavior on your site:

    <%= amp_pixel("https://foo.com/pixel?RANDOM") %>


### Helpers

The following helpers are usable with the Advertisement Component of AMP-HTML

* [`amp_analytics`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_analytics.md)
* [`amp_google_analytics`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_google_analytics.md)
* [`amp_pixel`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_pixel.md)
