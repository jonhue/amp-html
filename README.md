# amp-html

[![Gem Version](https://badge.fury.io/rb/amp-html.svg)](https://badge.fury.io/rb/amp-html) <img src="https://travis-ci.org/jonhue/amp-html.svg?branch=master" />

Reliable high-:zap: apps with AMP & Rails.

amp-html is a universal solution to integrate the [AMP Project](https://www.ampproject.org/) into your Rails app with ease. It enables you to quickly spin-up, build and test your app with AMP, while fulfilling the app's unique requirements. It comes with a bunch of superpowers like user authentication, notifications, blogs, animations and support for assets in AMP.

Use the powerful features of AMP to make your Rails app consistently fast, beautiful and high-performing across devices and distribution platforms.

[**Follow the Getting Started Guide**](https://github.com/jonhue/amp-html/wiki/Getting-started)

---

## Navigation

* [Information](#information)
    * [Quick info (Latest release, Dependencies)](#quick-info)
    * [The amp-html wiki](#the-amp-html-wiki)
    * [Bug reports](#bug-reports)
    * [Example applications](#example-applications)
    * [Contributing](#contributing)
    * [Versioning](#versioning)
    * [Deprecations](#deprecations)
* [Installation](#installation)
    * [Generators](#generators)
    * [Test and validate AMP](#test-and-validate-amp)
* [Usage](#usage)
    * [SplitView](#splitview)
* [Guides](#guides)
* [Components](#components)
* [Configuration](#configuration)
* [To Do](#to-do)
* [Contributors](#contributors)
* [License](#license)

---

## Information

### Quick info

#### Latest release: 1.0.0

[**Changelog**](CHANGELOG.md), [Grab it from Rubygems](https://rubygems.org/gems/amp-html)

#### Supported versions

    Rails >= 5.0
    Ruby >= 2.3

### The amp-html wiki & documentation

The amp-html Wiki has lots of additional information about amp-html including many "how-to" articles and answers to the most frequently asked questions. Please browse the Wiki after finishing this README:

https://github.com/jonhue/amp-html/wiki

### Bug reports

If you discover a problem with amp-html, we would like to know about it. However, we ask that you please review these guidelines before submitting a bug report:

https://github.com/jonhue/amp-html/wiki/Bug-reports

### Example applications

There are a few example applications available on GitHub that demonstrate various features of amp-html. You can view them here:

https://github.com/jonhue/amp-html/wiki/Example-Applications

### Contributing

We hope that you will consider contributing to amp-html. Please read this short overview for some information about how to get started:

[Contributing](CONTRIBUTING.md), [Code of Conduct](CODE_OF_CONDUCT.md)

### Versioning

amp-html follows Semantic Versioning 2.0 as defined at http://semver.org.

### Deprecations

Deprecations are combined with new major releases of amp-html. You can see a full list of past and future deprecations [here](DEPRECATIONS.md).

## Installation

You can also follow the [**Getting Started Guide**](https://github.com/jonhue/amp-html/wiki/Getting-started).

amp-html works with Rails 5 onwards. You can add it to your `Gemfile` with:

```ruby
gem 'amp-html'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install amp-html

If you always want to be up to date fetch the latest from GitHub in your `Gemfile`:

```ruby
gem 'amp-html', github: 'jonhue/amp-html'
```

Now generate the files necessary:

    $ rails g mozaic:install
    $ rails g amp_html

Replace the contents of your `app/views/layouts/application.html.erb` file with:

```haml
= amp_mozaic do
    = yield
```

Lastly, make sure to remove Turbolinks from your apps asset pipeline (`app/assets/javascripts/application.js`) as it does not work well with AMP.

## Usage

### SplitView

---

## Guides

---

## Components

---

## Configuration

You can configure amp-html by passing a block to `configure`. This can be done in `config/initializers/amp-html.rb`:

```ruby
AmpHtml.configure do |config|
    config.inherit_stylesheets = false
end
```

* `inherit_stylesheets` Use your regular stylesheets bundled with `app/assets/stylesheets/application.css` in your AMP views. Takes a boolean. Defaults to `false`.
* `split_view` Enable SplitView to allow for AMP enabled and AMP disabled versions of your views. Takes a boolean. Defaults to `false`.
* `split_view_default` The default view version if no `amp` param is present in the request. Must be either `'amp'` or `'html'`. Defaults to `'amp'`.

---

## To Do

[Here](https://github.com/jonhue/amp-html/projects/1) is the full list of current projects.

To propose your ideas, initiate the discussion by adding a [new issue](https://github.com/jonhue/amp-html/issues/new).

---

## Contributors

Give the people some :heart: who are working on this project. See them all at:

https://github.com/jonhue/amp-html/graphs/contributors

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
