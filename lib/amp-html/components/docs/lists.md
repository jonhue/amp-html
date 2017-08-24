
# [Components](https://github.com/slooob/amp-html/tree/master/lib/amp-html/components/docs) / Lists BETA


## Information

The AMP-HTML Lists Component allows to dynamically from a CORS JSON endpoint.

---

### Quick info

#### Latest component release: 0.7.3 (Pre-release) - 2017-03-22

[**Changelog for version 0.7.3**](https://github.com/slooob/amp-html/blob/master/CHANGELOG.md#073-pre-release---2017-03-22)

#### Requirements

The Lists Component does not depend on any other components.

#### Dependents

No other components depend on the Lists Component.

#### [DeepIntegration](https://github.com/slooob/amp-html/tree/master/lib/amp-html/components/docs#deepintegration-components): Disabled

#### [Availability](https://github.com/slooob/amp-html/tree/master/lib/amp-html/components/docs#availability-of-components): Installable

---

## Installation

Run in the command line:

    amp-html install lists

Now you are ready to use the Lists Component.

To learn more about this component, without opening the documentation, run:

    amp-html component lists


## Usage

In your views you can implement a list as follows:

    <%= amp_list(source, options) do %>
    <% end %>

    <%= amp_list("https://data.com/articles.json?ref=CANONICAL_URL", width: 300, height: 200) do %>
        <%= amp_mustache do %>
            <div>
                <%= amp_image("{{imageUrl}}", width: 50, height:50) %>
                {{title}}
            </div>
        <% end %>
        <div overflow role=button aria-label="Show more" class="list-overflow">
            Show more
        </div>
    <% end %>

**Note:** The `amp_list` defaults to `layout: "responsive"`.

Learn more about the `amp_list` helper in the dedicated reference linked below.

**References:** [`amp_mustache`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_mustache.md), [`amp_image`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_image.md)

### Live Lists

By using `amp_live_list` you can update the content in the client as new content is available:

    <%= amp_live_list(id, max_items_per_page, interval) do %>
    <% end %>


    <%= amp_css do %>
        amp-live-list > [update] {
            display: none;
        }

        #fixed-button {
            position: fixed;
            top: 10px;
            left: 50%;
            transform: translateX(-50%)
        }

        .slide.amp-active {
            overflow-y: hidden;
            height: 100px;
            max-height: 150px;
            transition-property: height;
            transition-duration: .2s;
            transition-timing-function: ease-in;
            background: #3f51b5;
        }

        .slide.amp-hidden {
            max-height: 0;
        }

        // We need to override "display: none" to be able to see
        // the transition effect on the 2nd live list.
        #live-list-2 > .amp-hidden[update] {
            display: block;
        }
    <% end %>

    <%= amp_live_list("live-list-1", "5", "16000") do %>
        <%= amp_live_list_update(ontap: "live-list-1.update", id: "fixed-button", class: "button") do %>
            new updates on live list 1
        <% end %>
        <%= amp_live_list_items do %>
            <div id="live-list-1-item-2" data-sort-time="1462814963592">
                <div class="card">
                    <div class="logo">
                        <%= amp_image("ampicon.png", layout: "fixed", height: "50", width: "50") %>
                    </div>
                </div>
            </div>
            <div id="live-list-1-item-1" data-sort-time="1462814955597">
                <div class="card">
                    <div class="logo">
                        <%= amp_image("ampicon.png", layout: "fixed", height: "50", width: "50") %>
                    </div>
                </div>
            </div>
        <% end %>
    <% end %>
    <%= amp_live_list("live-list-2", "10", "20000") do %>
        <%= amp_live_list_update("button", "live-list-1", id: "fixed-button", class: "button") do %>
            new updates on live list 1
        <% end %>
        <%= amp_live_list_items do %>
            <div id="live-list-1-item-2" data-sort-time="1462814963592">
                <div class="card">
                    <div class="logo">
                        <%= amp_image("ampicon.png", layout: "fixed", height: "50", width: "50") %>
                    </div>
                </div>
            </div>
            <div id="live-list-1-item-1" data-sort-time="1462814955597">
                <div class="card">
                    <div class="logo">
                        <%= amp_image("ampicon.png", layout: "fixed", height: "50", width: "50") %>
                    </div>
                </div>
            </div>
        <% end %>
    <% end %>

**Note:** The `amp_live_list` defaults to `layout: "responsive"`.

Learn more about the `amp_live_list` helper in the dedicated reference linked below.

**References:** [`amp_css`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_css.md), [`amp_image`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_image.md)


### Helpers

The following helpers are usable with the Lists Component of AMP-HTML

* [`amp_list`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_list.md)
* [`amp_live_list`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_live_list.md)
* [`amp_live_list_update`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_live_list_update.md)
* [`amp_live_list_items`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_live_list_items.md)
* [`amp_live_list_pagination`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_live_list_pagination.md)
