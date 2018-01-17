# amp-html

[![Gem Version](https://badge.fury.io/rb/amp-html.svg)](https://badge.fury.io/rb/amp-html) <img src="https://travis-ci.org/jonhue/amp-html.svg?branch=master" />

Reliable high-:zap: apps with AMP & Rails.

amp-html is a universal solution to integrate the [AMP Project](https://www.ampproject.org/) into your Rails app with ease. It enables you to quickly spin-up, build and test your app with AMP, while fulfilling the app's unique requirements. It comes with a bunch of superpowers like user authentication, notifications, blogs, animations and support for assets in AMP.

Use the powerful features of AMP to make your Rails app consistently fast, beautiful and high-performing across devices and distribution platforms.

[**Follow the Getting Started Guide**](https://github.com/jonhue/amp-html/wiki/Getting-started), [Demo](https://hello-amp.herokuapp.com)

---

## Navigation

* [Information](#information)
    * [Quick info](#quick-info)
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
    * [Views](#views)
    * [Controllers](#controllers)
    * [SplitView](#splitview)
* [Guides](#guides)
    * [Getting started](#getting-started)
    * [Utilizing features](#utilizing-features)
        * [Essentials](#essentials)
        * [Powerful features](#powerful-features)
    * [Testing](#testing)
* [Components](#components)
* [Configuration](#configuration)
* [To Do](#to-do)
* [Contributors](#contributors)
* [License](#license)

---

## Information

### Quick info

#### Latest release: 1.0.1

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

### Views

You can check whether your document is using AMP or not by using the `amp?` method:

```haml
- if amp?
    = component 'amp/mustache' do
        -# ...
```

**Note:** This method is also available at controller level.

When you are using [SplitView](#splitview) along with media/form/etc. elements, you don't have to use `amp?` to render the appropriate element. amp-html automatically overrides the default Rails helpers if your document is using AMP.

### Controllers

If you are using [SplitView](#splitview), you are able to override the default format (`html`/`amp`) by passing the `amp` parameter. However in a lot of cases you want to specify the format from within the path of the URL:

```ruby
class PostsController < ApplicationController

    def index
        amp_path # to use `'amp'` as path
        amp_path 'custom-path' # to use `'custom-path'` as path
    end

end
```

You are also able to manually enable or disable AMP for a specific controller action:

```ruby
class PostsController < ApplicationController

    def index
        amp # to enable AMP
        amp = false # to disable AMP
    end

end
```

### SplitView

SplitView allows you to serve `html` and `amp` versions of your views. To get started, enable and configure SplitView:

```ruby
AmpHtml.configure do |config|
    config.split_view = true
    config.split_view_default = 'amp'
end
```

Now you can use amp-html's [view](#views) and [controller](#controllers) methods to determine whether a document uses `html` or `amp` as format.

---

## Guides

Whether you are just getting started or you are looking to implement some of the powerful features of amp-html, the guides in the amp-html wiki are here to your rescue.

https://github.com/jonhue/amp-html/wiki/Guides

---

## Components

amp-html is component based. You can learn more about components and find the full reference in the amp-html wiki.

https://github.com/jonhue/amp-html/wiki/Docs

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
