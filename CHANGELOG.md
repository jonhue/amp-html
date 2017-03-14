### unreleased

* features
    * introduce `amp_css` helper
    * introduce Social Tag Helpers
        * `twitter_tag`
        * `instagram_tag`
        * `facebook_tag`
        * `youtube_tag`
* enhancements
    * allow custom CSS in views
    * warn when a `stylesheet_link_tag` or `javascript_include_tag` is being used
    * improve `HelpersGenerator`
    * re-structure `application.html.erb`
    * put amp-stuff into `_amp.html`
* bug fixes
    * improve `TagHelper`'s

### 0.1.5 (Pre-release) - 2017-03-13

* features
    * introduce `--split` option for `InstallGenerator`
    * introduce `--split` option for `HelpersGenerator`
* enhancements
    * add `help` method to `Amphtml`
    * add `version` method to `Amphtml`
    * custom installation message
    * add `Amphtml.validate` method fallback
    * improve file reading
* bug fixes
    * Improve `AssetTagHelper`'s

### 0.1.4 (Pre-release) - 2017-03-13

* features
    * introduce `--split` option for `ViewsGenerator`
    * add `validate` method to `Amphtml`

### 0.1.3 (Pre-release) - 2017-03-12

* bug fixes
    * [#1](https://github.com/jonhue/amphtml/issues/1) - `Couldn't find AssetTagHelper, expected it to be defined in helpers/asset_tag_helper.rb`
    * [#2](https://github.com/jonhue/amphtml/issues/2) - `initializers/amphtml.rb - NameError`

### 0.1.2 (Pre-release) - 2017-03-12

* bug fixes
    * `Amphtml is not a module`
    * not all files included

### 0.1.0 (Pre-release) - 2017-03-12

Initial release
