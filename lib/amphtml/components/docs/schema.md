
# [Components](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/components/docs) / Schema.org


## Information

The AMP-HTML Schema.org Component allows to easily include a Schema.org definition to get your content distributed in certain places, like the Google News Carousel.

### Quick info

#### Latest component release: 0.5.4 (Pre-release) - 2017-03-19

[**Changelog for version 0.5.4**](https://github.com/jonhue/amphtml/blob/master/CHANGELOG.md#054-pre-release---2017-03-19)

#### Requirements

The Schema.org Component does not depend on any other components.

#### Dependents

No other components depend on the Schema.org Component.

#### [DeepIntegration](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/components/docs#deepintegration-components): Disabled

#### [Availability](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/components/docs#availability-of-components): Build-in


## Configuration

In your AMP-HTML configuration (`config/amphtml.yml`) search for the section of the App Customization.

There you can specify some information about your app:

    name: "MyApp"
    type: "Organization"
    date_published: "2015-10-07T12:02:41Z"
    image: ["logo.jpg"]

You can override each of these values by passing a different value to the `schema_tag`.


## Usage

In your views you can setup analytics as follows:

    <%= schema_tag %>

By default it takes the configured values in your AMP-HTML configuration:

    <script type="application/ld+json">
    {
        "@context": "http://schema.org",
        "@type": "Organization",
        "headline": "MyApp",
        "datePublished": "2015-10-07T12:02:41Z",
        "image": [
            "logo.jpg"
        ]
    }
    </script>

You can override values:

    <%= schema_tag(headline: "Open-source framework for publishing content", type: "NewsArticle", image: ["cover.jpg"]) %>

You can also add new information:

    <%= schema_tag(address: "PO Box 7775, San Francisco", email: "email@example.com") %>

Learn more about the `schema_tag` helper in the dedicated reference linked below.


### Helpers

The following helpers are usable with the Schema.org Component of AMP-HTML

* [`schema_tag`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/schema_tag.md)
