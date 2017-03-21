
# [Components](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/components/docs) / Forms BETA


## Information

The AMP-HTML Forms Component allows the use of forms and input tags in AMP documents.

---

### Quick info

#### Latest component release: 0.7.0 (Pre-release) - 2017-03-21

[**Changelog for version 0.7.0**](https://github.com/jonhue/amphtml/blob/master/CHANGELOG.md#070-pre-release---2017-03-21)

#### Requirements

The Forms Component does not depend on any other components.

#### Dependents

No other components depend on the Forms Component.

#### [DeepIntegration](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/components/docs#deepintegration-components): Disabled

#### [Availability](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/components/docs#availability-of-components): Build-in

---

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

* [`amp_form`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_form.md)
* [`amp_input`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_input.md)
* [`amp_selector`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_selector.md)
* [`amp_form_response`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_form_response.md)
* [`form_tag`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/form_tag.md)
* [`input_tag`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/input_tag.md)
