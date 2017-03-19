
# [Helpers](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/helpers/docs#amp-html-helpers) / `amp_audio`


## Information

`amp_audio` allows to directly embed audio files with HTML5.

### Quick info

#### Latest update: 0.1.5 (Pre-release) - 2017-03-13

[**Changelog for version 0.1.5**](https://github.com/jonhue/amphtml/blob/master/CHANGELOG.md#015-pre-release---2017-03-13)

#### [DeepIntegration](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/helpers/docs#deepintegration-helpers): Disabled

#### [Availability](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/helpers/docs#availability-of-helpers): Build-in

#### [Takes a block?](https://github.com/jonhue/amphtml/tree/master/lib/amphtml/helpers/docs#takes-a-block): No

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
