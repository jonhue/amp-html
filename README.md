# AMP-HTML - Reliable and high-:zap: apps with AMP & Rails [IN DEVELOPMENT]

Amphtml is a universal solution to integrate your Rails app easily with the AMP Project (Acellerated Mobile Pages Project). It enables you to quickly spin-up, build and test your app with AMP, while fulfilling the app's unique requirements.

Use the powerful features of AMP to make your Rails app consistently fast, beautiful and high-performing across devices and distribution platforms.

[**Follow the Getting Started Guide**](https://github.com/jonhue/amphtml/wiki/Getting-started)

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

#### Latest release: 0.4.1 (Pre-release)

[**Changelog**](https://github.com/jonhue/amphtml/blob/master/CHANGELOG.md), [Grab it from Rubygems](https://rubygems.org/gems/amphtml)

#### Supported versions

Rails 4.0, 4.1, 4.2, 5.0, 5.1

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

[https://github.com/jonhue/amphtml/wiki/Contributing](https://github.com/jonhue/amphtml/wiki/Contributing), [Code of conduct](https://github.com/jonhue/amphtml/blob/master/CODE_OF_CONDUCT.md)

## Concept

## Features

## Installation

You can also follow the [**Getting Started Guide**](https://github.com/jonhue/amphtml/wiki/Getting-started).

AMP-HTML works with Rails 4.0 onwards. You can add it to your `Gemfile` with:

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

### Generators

Amphtml comes with three different generators. If you want to bundle them execute:

    $ rails g amphtml:bundle

That will generate all the files you need to create a universal AMP app (recommended).

If you want to use [SplitView](https://github.com/jonhue/amphtml/wiki/Docs:-SplitView) to create views with and without AMP simultaneously, execute instead:

    $ rails g amphtml:bundle --split

To add components ([List of components](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/components/docs/README.md)) to the generator simply include the component as an option:

    $ rails g amphtml:bundle --analytics --notifications

You can also run the three generators independently:

    $ rails g amphtml:install
    $ rails g amphtml:helpers
    $ rails g amphtml:views

*Each* of them supports the `--split || -s` option to use **both** regular views and AMP views.
To add components, you need to pass them as option to the each generator.

### Test and validate AMP

Amphtml allows you to test and validate your views out of the box:

    $ amphtml test all

Pass `--split` as an option if you are using SplitView:

    $ amphtml test all --split

`test all` runs multiple tests to check if your code is valid. You can also run each test specifically.

To get a list of all tests and learn how to run them, go to [how to test and validate](https://github.com/jonhue/amphtml/wiki/Guides:-Test-and-validate)

To all tests (even `test all`) you can pass the option `--fix || -f` and Amphtml will suggest changes you could make. You can accept or reject them.
If you want to automatically fix the code, pass `--autofix || -af` as option. Be careful, you will not be asked to approve changes to the documents!

AMP has a validator built in. To validate:

    $ amphtml validate root # validates "http://localhost:3000"
    $ amphtml validate https://slooob.com # validates "https://slooob.com"

**Note:** `root` is only available as a parameter in development environment..

## Usage

### Helpers

### SplitView

## Guides

## Components

---

## Contributors

Give the people some :heart: who are working on this project. Check them all at:

[https://github.com/jonhue/amphtml/graphs/contributors](https://github.com/jonhue/amphtml/graphs/contributors)

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
