
# [Helpers](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/helpers/docs#amp-html-helpers) / `amp_analytics`


## Information

`amp_analytics` allows to integrate with venders to measure activity on AMP documents.

### Quick info

#### Latest update: 0.4.2 (Pre-release) - 2017-03-17

[**Changelog for version 0.4.2**](https://github.com/jonhue/amphtml/blob/master/CHANGELOG.md#042-pre-release---2017-03-17)

#### [DeepIntegration](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/helpers/docs#deepintegration-helpers): Enabled

#### [Availability](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/helpers/docs#availability-of-helpers): Installable with the [Analytics Component](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/components/docs/analytics.md)

#### [Takes a block?](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/helpers/docs#takes-a-block): Yes

## General

### Reference

[**AMP Reference**](https://www.ampproject.org/docs/reference/components/ads/amp-analytics)

#### Required Parameters

* `vendor` (if not set in the AMP-HTML configuration)

#### Structure

    <%= amp_analytics(vendor, options) %>
    # <amp-analytics type=vendor></amp-analytics>


## Examples

Loading a remote config:

    <%= amp_ad("adobeanalytics", config: "https://example.com/analytics.config.json") %>

`amp_analytics` also takes a block:

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
