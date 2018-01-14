# -*- encoding: utf-8 -*-
require File.expand_path File.join('..', 'lib', 'amp-html', 'version'), __FILE__

Gem::Specification.new do |gem|
    gem.name                  = 'amp-html'
    gem.version               = AmpHtml::VERSION
    gem.platform              = Gem::Platform::RUBY
    gem.summary               = 'Reliable high-performance apps with AMP & Rails. Formerly `amphtml`.'
    gem.description           = "amp-html is a universal solution to integrate the AMP Project (Accelerated Mobile Pages Project) into your Rails app with ease. It enables you to quickly spin-up, build and test your app with AMP, while fulfilling the app's unique requirements. It comes with a bunch of superpowers like user authentication, notifications, blogs, animations and support for assets in AMP. Make your app consistently fast, beautiful and high-performing across devices and distribution platforms."
    gem.authors               = ['Jonas Hübotter']
    gem.email                 = 'me@jonhue.me'
    gem.homepage              = 'https://github.com/jonhue/amp-html'
    gem.license               = 'MIT'

    gem.files                 = Dir['README.md', 'CHANGELOG.md', 'LICENSE', 'lib/**/*', 'app/**/*']
    gem.require_paths         = ['lib']

    gem.required_ruby_version = '>= 2.3'

    gem.add_dependency 'rails', '>= 5.0'
    gem.add_dependency 'mozaic', '~> 1.1'

    gem.add_development_dependency 'rspec', '~> 3.7'
    gem.add_development_dependency 'rubocop', '~> 0.52'
end
