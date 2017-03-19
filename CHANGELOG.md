### unreleased

* nothing yet

### 0.6.0 (Pre-release) - 2017-03-19

* features
    * introduce javascript component
* enhancements
    * add javascript component docs
    * add configuration docs
* bug fixes
    * fix `config/initializers/amphtml.rb`
    * fix helpers

### 0.5.4 (Pre-release) - 2017-03-19

* features
    * add `amp_auto_ads` helper
* enhancements
    * `validate`: start server if not already running
    * add analytics component docs
    * add validate docs
* bug fixes
    * fix configuration
    * fix `schema_tag` helper
    * fix `amp_tag` helpers
    * fix `BundleGenerator`
    * fix view templates

### 0.5.3 (Pre-release) - 2017-03-18

* enhancements
    * add component docs
    * improve add templates
    * improve `config/amphtml.yml` template
* bug fixes
    * fix test class
    * fix test help
    * fix validate help

### 0.5.2 (Pre-release) - 2017-03-18

* features
    * add `amp_font_link` helper
* enhancements
    * improve html test
* bug fixes
    * fix `config/mime_types.rb` template
    * fix helper templates
    * fix `BundleGenerator`

### 0.5.1 (Pre-release) - 2017-03-18

* enhancements
    * improve `config/amphtml.yml` template
* bug fixes
    * fix `-amp-` in CSS test
    * fix `HelpersGenerator`
    * fix `ViewsGenerator`

### 0.5.0 (Pre-release) - 2017-03-18

* features
    * add `amp_embed` helper
    * add `amp_resources` helper
    * introduce `amphtml install COMPONENT`
    * introduce `amphtml test NAME` on
        * `markup`
        * `html`
        * `css`
* enhancements
    * improve `config/amphtml.yml` template
    * improve `app/views/layouts/application.html.erb` template
* bug fixes
    * fix AMP issue in `amp_head` helper

### 0.4.5 (Pre-release) - 2017-03-17

* removals
    * `meta_tag` renamed to `amp_head`
* bug fixes
    * fix `ViewsGenerator`
    * fix `config/amphtml.yml` template

### 0.4.4 (Pre-release) - 2017-03-17

* features
    * add `schema_tag` helper
    * add `meta_tag` helper
* enhancements
    * dynamically assign format for generators
* bug fixes
    * [#21](https://github.com/jonhue/amphtml/issues/21) - File open issues

### 0.4.3 (Pre-release) - 2017-03-17

* bug fixes
    * fix `--format` option in generators

### 0.4.2 (Pre-release) - 2017-03-17

* features
    * add analytics component DeepIntegration
    * add ad component DeepIntegration
    * add social component DeepIntegration
* enhancements
    * improve generators
* bug fixes
    * fix `amphtml bundle`
    * fix `BundleGenerator`

### 0.4.1 (Pre-release) - 2017-03-16

* features
    * add `ComponentsGenerator`
* enhancements
    * improve `CLI`
    * add docs for components and helpers
* bug fixes
    * fix `amphtml validate`

### 0.4.0 (Pre-release) - 2017-03-16

* features
    * add command line executables
* bug fixes
    * fix generators

### 0.3.1 (Pre-release) - 2017-03-16

* bug fixes
    * fix Rails dependency

### 0.3.0 (Pre-release) - 2017-03-15

* features
    * add SplitView
    * yml configuration file
    * add fonts helpers
    * add AMP links helpers
* enhancements
    * improve generators
    * improve generator templates
    * improve `Amphtml::Test` class
    * drop Rails dependency to 4.0

### 0.2.1 (Pre-release) - 2017-03-14

* bug fixes
    * fix `Amphtml::Test` class

### 0.2.0 (Pre-release) - 2017-03-14

* removals
    * AMP related tag helpers changed from `name_tag` to `amp_name`
* features
    * introduce `Amphtml::Test` class
    * introduce options for `ViewsGenerator` to include AMP specific tags
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
