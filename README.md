# [BETA] AMP-HTML - Reliable high-:zap: apps with AMP & Rails

<img src="https://travis-ci.org/slooob/amp-html.svg?branch=master" /> [![Gem Version](https://badge.fury.io/rb/amp-html.svg)](https://badge.fury.io/rb/amp-html)

AmpHtml is a universal solution to integrate the AMP Project (Accelerated Mobile Pages Project) into your Rails app with ease. It enables you to quickly spin-up, build and test your app with AMP, while fulfilling the app's unique requirements. It comes with a bunch of superpowers like user authentication, notifications, blogs, animations and support for assets in AMP.

Use the powerful features of AMP to make your Rails app consistently fast, beautiful and high-performing across devices and distribution platforms.

[**Follow the Getting Started Guide**](https://github.com/slooob/amp-html/wiki/Getting-started)

---

## Navigation

* [Information](#information)
    * [Quick info (Latest release, Dependencies)](#quick-info)
    * [The AMP-HTML wiki](#the-amp-html-wiki)
    * [Bug reports](#bug-reports)
    * [Example applications](#example-applications)
    * [Contributing](#contributing)
* [Concept](#concept)
* [Features](#features)
* [Installation](#installation)
    * [Generators](#generators)
    * [Test and validate AMP](#test-and-validate-amp)
* [Usage](#usage)
    * [Helpers](#helpers)
    * [SplitView](#splitview)
* [Guides](#guides)
* [Components](#components)
* [Contributors](#contributors)
* [License](#license)

---

## Information

### Quick info

#### Latest release: 0.7.17 (Pre-release)

[**Changelog**](https://github.com/slooob/amp-html/blob/master/CHANGELOG.md), [Grab it from Rubygems](https://rubygems.org/gems/amp-html)

#### Supported versions

    Rails >= 4.0.0
    Ruby >= 2.0

### The AMP-HTML wiki & documentation

The AMP-HTML Wiki has lots of additional information about AMP-HTML including many "how-to" articles and answers to the most frequently asked questions. Please browse the Wiki after finishing this README:

[https://github.com/slooob/amp-html/wiki](https://github.com/slooob/amp-html/wiki)

### Bug reports

If you discover a problem with AMP-HTML, we would like to know about it. However, we ask that you please review these guidelines before submitting a bug report:

[https://github.com/slooob/amp-html/wiki/Bug-reports](https://github.com/slooob/amp-html/wiki/Bug-reports)

If you have discovered a security related bug, please do *NOT* use the GitHub issue tracker. Send an email to [developer@slooob.com](mailto:developer@slooob.com).

### Example applications

There are a few example applications available on GitHub that demonstrate various features of AMP-HTML. You can view them here:

[https://github.com/slooob/amp-html/wiki/Example-Applications](https://github.com/slooob/amp-html/wiki/Example-Applications)

### Contributing

We hope that you will consider contributing to AMP-HTML. Please read this short overview for some information about how to get started:

[Contributing](https://github.com/slooob/amp-html/blob/master/CONTRIBUTING.md), [Code of Conduct](https://github.com/slooob/amp-html/blob/master/CODE_OF_CONDUCT.md)

## Concept

## Features

## Installation

You can also follow the [**Getting Started Guide**](https://github.com/slooob/amp-html/wiki/Getting-started).

AMP-HTML works with Rails 4.0 onwards. You can add it to your `Gemfile` with:

```ruby
gem 'amp-html'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install amp-html

If you always want to be up to date fetch the latest from GitHub in your `Gemfile`:

```ruby
gem 'amp-html', github: 'https://github.com/slooob/amp-html.git'
```

### Generators

AmpHtml comes with three different generators. If you want to bundle them execute:

    $ rails g amp_html:bundle

That will generate all the files you need to create a universal AMP app (recommended).

If you want to use [SplitView](https://github.com/slooob/amp-html/wiki/Docs:-SplitView) to create views with and without AMP simultaneously, execute instead:

    $ rails g amp_html:bundle --split

To add components ([List of components](https://github.com/slooob/amp-html/blob/master/lib/amp-html/components/docs/README.md)) to the generator simply include the component as an option:

    $ rails g amp_html:bundle --analytics --notifications

You can also run the three generators independently:

    $ rails g amp_html:install
    $ rails g amp_html:helpers
    $ rails g amp_html:views

*Each* of them supports the `--split || -s` option to use **both** regular views and AMP views.
To add components, you need to pass them as option to each generator.

### Test and validate AMP

AmpHtml allows you to test and validate your views out of the box:

    $ amp-html test all

Pass `--split` as an option if you are using SplitView:

    $ amp-html test all --split

`test all` runs multiple tests to check if your code is valid. You can also run each test specifically.

To get a list of all tests and learn how to run them, go to [how to test and validate](https://github.com/slooob/amp-html/wiki/Guides:-Test-and-validate)

To all tests (even `test all`) you can pass the option `--fix || -f` and AmpHtml will suggest changes you could make. You can accept or reject them.
If you want to automatically fix the code, pass `--autofix || -af` as option. Be careful, you will not be asked to approve changes to the documents!

AMP has a validator built in. To validate:

    $ amp-html validate root # validates "http://localhost:3000"
    $ amp-html validate https://slooob.com # validates "https://slooob.com"

**Note:** `root` is only available as a parameter in development environment..

## Usage

### Helpers

### SplitView

## Guides

## Components

---

## Contributors

Give the people some :heart: who are working on this project. Check them all at:

[https://github.com/slooob/amp-html/graphs/contributors](https://github.com/slooob/amp-html/graphs/contributors)

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
