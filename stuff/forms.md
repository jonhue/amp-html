
# [Components](https://github.com/slooob/amp-html/tree/master/lib/amp-html/components/docs) / Forms BETA


## Information

The AMP-HTML Forms Component allows the use of forms and input tags in AMP documents.

---

### Quick info

#### Latest component release: 0.7.1 (Pre-release) - 2017-03-21

[**Changelog for version 0.7.1**](https://github.com/slooob/amp-html/blob/master/CHANGELOG.md#071-pre-release---2017-03-21)

#### Requirements

The Forms Component depends on the [AMP-HTML Mustache.js Component](https://github.com/slooob/amp-html/tree/master/lib/amp-html/components/docs/mustache.md).

#### Dependents

No other components depend on the Forms Component.

#### [DeepIntegration](https://github.com/slooob/amp-html/tree/master/lib/amp-html/components/docs#deepintegration-components): Enabled

#### [Availability](https://github.com/slooob/amp-html/tree/master/lib/amp-html/components/docs#availability-of-components): Build-in

---

## Configuration

The Forms Component allows you to specify a whether you want to use [`amp_selector`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_selector.md) or not.

In your AMP-HTML configuration (`config/amp-html.yml`) search for the section of the Forms Component.

There you can enable the helper like so:

    amp_selector: true


## Usage


**Important note:** In AMP documents you can neither use the default `font_tag` helper, nor a helper provided by `simple_form` or similar.

You can create forms in your views as follows:

    <%= amp_form("https://example.com/subscribe", "post", id: "myform") do %>
        <fieldset>
            <label>
                <span>Your name</span>
                <%= amp_input("text", "type your name", "name", "myform.submit") %>
            </label>
            <label>
                <span>Your email</span>
                <%= amp_input("email", "type your email", "email", "myform.submit") %>
            </label>
            <%= amp_input("submit", value: "Subscribe") %>
        </fieldset>
        <%= amp_form_response("error") %>Subscription failed!<% end %>
        <%= amp_form_response %>Subscription successful!<% end %>
    <% end %>

**Note:** `POST` forms are submitted via AJAX by default. To submit `GET` forms via AJAX pass `ajax: true` to `amp_form` as parameter.

For a detailed reference on the `amp_form`, `amp_input` and `amp_form_response` helpers, follow the links below.


### Helpers

The following helpers are usable with the Forms Component of AMP-HTML

* [`amp_form`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_form.md)
* [`amp_input`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_input.md)
* [`amp_selector`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_selector.md)
* [`amp_form_response`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/amp_form_response.md)
* [`form_tag`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/form_tag.md)
* [`input_tag`](https://github.com/slooob/amp-html/blob/master/lib/amp-html/helpers/docs/input_tag.md)
