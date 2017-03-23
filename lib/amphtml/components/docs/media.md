
# [Components](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/components/docs) / Media BETA


## Information

The AMP-HTML Media Component allows to use HTML5-similar media tags in AMP documents.

---

### Quick info

#### Latest component release: 0.7.5 (Pre-release) - 2017-03-23

[**Changelog for version 0.7.5**](https://github.com/jonhue/amphtml/blob/master/CHANGELOG.md#075-pre-release---2017-03-23)

#### Requirements

The Media Component does not depend on any other components.

#### Dependents

No other components depend on the Media Component.

#### [DeepIntegration](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/components/docs#deepintegration-components): Disabled

#### [Availability](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/components/docs#availability-of-components): Build-in

---

## Usage

In your views you include an image as follows:

    <%= amp_image(source, options) %>
    <%= amp_image("my_image.png", size: "400x300", alt: "My Image") %>

**Note:** The `amp_image` helper uses the assets pipeline to find your image source.

Learn more about the `amp_image` helper in the dedicated reference linked below.


### Helpers

The following helpers are usable with the Media Component of AMP-HTML

* [`amp_image`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_image.md)
* [`amp_video`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_video.md)
* [`amp_audio`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/amp_audio.md)
* [`image_tag`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/image_tag.md)
* [`video_tag`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/video_tag.md)
* [`audio_tag`](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/helpers/docs/audio_tag.md)
