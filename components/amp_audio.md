
# [Helpers](https://github.com/slooob/amp-html/tree/master/lib/amp-html/helpers/docs#amp-html-helpers) / `amp_audio`


## Information

`amp_audio` allows to directly embed audio files with HTML5.

---

### Quick info

#### Latest update: 0.7.5 (Pre-release) - 2017-03-23

[**Changelog for version 0.7.5**](https://github.com/slooob/amp-html/blob/master/CHANGELOG.md#075-pre-release---2017-03-23)

#### [DeepIntegration](https://github.com/slooob/amp-html/tree/master/lib/amp-html/helpers/docs#deepintegration-helpers): Disabled

#### [Availability](https://github.com/slooob/amp-html/tree/master/lib/amp-html/helpers/docs#availability-of-helpers): Build-in with the [Media Component](https://github.com/slooob/amp-html/tree/master/lib/amp-html/components/docs/media.md)

#### [Takes a block?](https://github.com/slooob/amp-html/tree/master/lib/amp-html/helpers/docs#takes-a-block): No

---

## General

### Reference

[**AMP Reference**](https://www.ampproject.org/docs/reference/components/media/amp-audio)

#### Required Parameters

* `*sources`

#### Structure

    <%= amp_audio(*sources) %>
    # <amp-audio>
    #     <div fallback><p>Your browser doesn’t support HTML5 audio</p></div>
    #     <source type=type_of_source src=source></source>
    # </amp-audio>

**Note:** `layout` defaults to `responsive` if not explicitly permitted.


## Examples

Setting a custom fallback:

    <%= amp_audio("audio_file.mp3", fallback: "No audio here.") %>
    # <amp-audio>
    #     <div fallback><p>No audio here.</p></div>
    #     <source type="audio/mp3" src="audio_file.mp3"></source>
    # </amp-audio>
