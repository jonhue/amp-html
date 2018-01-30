# Changelog

### master

* nothing yet

### 1.2.0 - 2018/01/30

* features
    * automatically load controller action specific stylesheets
* enhancements
    * allow options to be passed to the `amp/doctype` component
* bugfixes
    * fix `amp/canonical-link` component for apps without SplitView
    * fix media components

### 1.1.0 - 2018/01/17

* features
    * new controller methods (`amp=`, `amp_path`)

### 1.0.1 - 2018/01/14

* enhancements
    * updated dependencies
* bugfixes
    * fixed assets reference in production environment

### 1.0.0 - 2018/01/14

* features
    * use Mozaic for components and SplitView layouts

### 0.7.18 (Pre-release) - 2017/08/24

* bugfixes

### 0.7.17 (Pre-release) - 2017/08/24

* bugfixes

### 0.7.16 (Pre-release) - 2017/08/24

* bugfixes

### 0.7.15 (Pre-release) - 2017/08/24

* bugfixes

### 0.7.14 (Pre-release) - 2017/08/24

* bugfixes

### 0.7.13 (Pre-release) - 2017/08/24

* bugfixes

### 0.7.12 (Pre-release) - 2017/08/24

* bugfixes

### 0.7.11 (Pre-release) - 2017/08/24

* bugfixes

### 0.7.10 (Pre-release) - 2017/08/24

* bugfixes

### 0.7.9 (Pre-release) - 2017/08/24

* bugfixes

### 0.7.8 (Pre-release) - 2017/08/24

* bugfixes

### 0.7.7 (Pre-release) - 2017/08/24

* notes
    * gem renamed from `amphtml` to `amp-html`

### 0.7.6 (Pre-release) - 2017/04/11

* enhancements
    * improve gemspec

### 0.7.5 (Pre-release) - 2017/03/23

* bugfixes
    * fix assets pipeline
    * fix assets helpers

### 0.7.4 (Pre-release) - 2017/03/22

* bugfixes
    * fix component bundler

### 0.7.3 (Pre-release) - 2017/03/22

* features
    * introduce lists component
    * introduce Mustache.js component

### 0.7.2 (Pre-release) - 2017/03/22

* features
    * introduce service worker component

### 0.7.1 (Pre-release) - 2017/03/21

* enhancements
    * add DeepIntegration to forms component
* bugfixes
    * fix syntax error

### 0.7.0 (Pre-release) - 2017/03/21

* features
    * introduce build-in forms component
    * add `amp?` helper
    * add `amp_css_link` helper
    * add a bunch of new helpers to social component

### 0.6.3 (Pre-release) - 2017/03/21

* removals
    * `amp_document_link` helper only available with SplitView
* enhancements
    * configuration: warn if no config file available
    * enhance tests

### 0.6.2 (Pre-release) - 2017/03/20

* removals
    * deprecate `amp_resources` helper - will be removed in 1.0
    * rename `amp_document_link` helper
    * rename `canonical_document_link` helper
* features
    * add `amp_link` helper
    * add `amp_custom_ad` helper
    * add `amp_video_ad` helper
* enhancements
    * improve `amp_analytics` helper
    * improve `amp_audio` helper
    * improve `amp_auto_ads` helper
    * improve `amp_facebook` helper
    * add media component docs
    * update component docs
    * update helper docs
    * change default app name
* bugfixes
    * fix tests

### 0.6.1 (Pre-release) - 2017/03/19

* removals
    * deprecate `amp_global_css` helper - will be removed in 2.0
* enhancements
    * improve `amp_anim` helper
    * improve `amp_ad` helper
    * improve social helpers
    * improve AMP helpers
    * update component docs
    * update helper docs
* bugfixes
    * fix `noscript_tag` helper

### 0.6.0 (Pre-release) - 2017/03/19

* features
    * introduce javascript component
* enhancements
    * add javascript component docs
    * add configuration docs
* bugfixes
    * fix `config/initializers/amphtml.rb`
    * fix helpers

### 0.5.4 (Pre-release) - 2017/03/19

* features
    * add `amp_auto_ads` helper
* enhancements
    * `validate`: start server if not already running
    * add analytics component docs
    * add validate docs
* bugfixes
    * fix configuration
    * fix `schema_tag` helper
    * fix `amp_tag` helpers
    * fix `BundleGenerator`
    * fix view templates

### 0.5.3 (Pre-release) - 2017/03/18

* enhancements
    * add component docs
    * improve add templates
    * improve `config/amphtml.yml` template
* bugfixes
    * fix test class
    * fix test help
    * fix validate help

### 0.5.2 (Pre-release) - 2017/03/18

* features
    * add `amp_font_link` helper
* enhancements
    * improve html test
* bugfixes
    * fix `config/mime_types.rb` template
    * fix helper templates
    * fix `BundleGenerator`

### 0.5.1 (Pre-release) - 2017/03/18

* enhancements
    * improve `config/amphtml.yml` template
* bugfixes
    * fix `-amp-` in CSS test
    * fix `HelpersGenerator`
    * fix `ViewsGenerator`

### 0.5.0 (Pre-release) - 2017/03/18

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
* bugfixes
    * fix AMP issue in `amp_head` helper

### 0.4.5 (Pre-release) - 2017/03/17

* removals
    * `meta_tag` renamed to `amp_head`
* bugfixes
    * fix `ViewsGenerator`
    * fix `config/amphtml.yml` template

### 0.4.4 (Pre-release) - 2017/03/17

* features
    * add `schema_tag` helper
    * add `meta_tag` helper
* enhancements
    * dynamically assign format for generators
* bugfixes
    * [#21](https://github.com/jonhue/amphtml/issues/21) - File open issues

### 0.4.3 (Pre-release) - 2017/03/17

* bugfixes
    * fix `--format` option in generators

### 0.4.2 (Pre-release) - 2017/03/17

* features
    * add analytics component DeepIntegration
    * add ad component DeepIntegration
    * add social component DeepIntegration
* enhancements
    * improve generators
* bugfixes
    * fix `amphtml bundle`
    * fix `BundleGenerator`

### 0.4.1 (Pre-release) - 2017/03/16

* features
    * add `ComponentsGenerator`
* enhancements
    * improve `CLI`
    * add docs for components and helpers
* bugfixes
    * fix `amphtml validate`

### 0.4.0 (Pre-release) - 2017/03/16

* features
    * add command line executables
* bugfixes
    * fix generators

### 0.3.1 (Pre-release) - 2017/03/16

* bugfixes
    * fix Rails dependency

### 0.3.0 (Pre-release) - 2017/03/15

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

### 0.2.1 (Pre-release) - 2017/03/14

* bugfixes
    * fix `Amphtml::Test` class

### 0.2.0 (Pre-release) - 2017/03/14

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
* bugfixes
    * improve `TagHelper`'s

### 0.1.5 (Pre-release) - 2017/03/13

* features
    * introduce `--split` option for `InstallGenerator`
    * introduce `--split` option for `HelpersGenerator`
* enhancements
    * add `help` method to `Amphtml`
    * add `version` method to `Amphtml`
    * custom installation message
    * add `Amphtml.validate` method fallback
    * improve file reading
* bugfixes
    * Improve `AssetTagHelper`'s

### 0.1.4 (Pre-release) - 2017/03/13

* features
    * introduce `--split` option for `ViewsGenerator`
    * add `validate` method to `Amphtml`

### 0.1.3 (Pre-release) - 2017/03/12

* bugfixes
    * [#1](https://github.com/jonhue/amphtml/issues/1) - `Couldn't find AssetTagHelper, expected it to be defined in helpers/asset_tag_helper.rb`
    * [#2](https://github.com/jonhue/amphtml/issues/2) - `initializers/amphtml.rb - NameError`

### 0.1.2 (Pre-release) - 2017/03/12

* bugfixes
    * `Amphtml is not a module`
    * not all files included

### 0.1.0 (Pre-release) - 2017/03/12

Initial release
