# AMP-HTML - Reliable and high-:zap: apps with AMP & Rails

The AMP Project for Rails. Make your Rails app consistently fast, beautiful and high-performing across devices and distribution platforms.

---

## Latest release

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

---

## Information

### The AMP-HTML wiki

The AMP-HTML Wiki has lots of additional information about AMP-HTML including many "how-to" articles and answers to the most frequently asked questions. Please browse the Wiki after finishing this README:

[https://github.com/jonhue/amphtml/wiki](https://github.com/jonhue/amphtml/wiki)

### Bug reports

If you discover a problem with AMP-HTML, we would like to know about it. However, we ask that you please review these guidelines before submitting a bug report:

[https://github.com/jonhue/amphtml/wiki/Bug-reports](https://github.com/jonhue/amphtml/wiki/Bug-reports)

If you have discovered a security related bug, please do *NOT* use the GitHub issue tracker. Send an email to [jonas@slooob.com](mailto:jonas@slooob.com).

### Example applications

There are a few example applications available on GitHub that demonstrate various features of AMP-HTML. You can view them here:

[https://github.com/jonhue/amphtml/wiki/Example-Applications](https://github.com/jonhue/amphtml/wiki/Example-Applications)

### Contributing

We hope that you will consider contributing to AMP-HTML. Please read this short overview for some information about how to get started:

[https://github.com/jonhue/amphtml/wiki/Contributing](https://github.com/jonhue/amphtml/wiki/Contributing)

---

## Getting started

AMP-HTML works with Rails 5.0 onwards. You can add it to your `Gemfile` with:

```ruby
gem 'amphtml'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install amphtml

If you always want to be up to date fetch the latest from GitHub in your `Gemfile`:

```ruby
gem 'amphtml', :git => 'https://github.com/jonhue/amphtml.git'
```

---

## Usage

### Helpers

---

## Configuration



---

## Contributors

Give the people some :heart: who are working on this project. Check them all at:

[https://github.com/jonhue/amphtml/graphs/contributors](https://github.com/jonhue/amphtml/graphs/contributors)

---

## License

MIT License

Copyright (c) 2017 Jonas Hübotter

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
