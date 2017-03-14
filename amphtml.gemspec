# -*- encoding: utf-8 -*-
require File.expand_path(File.join('..', 'lib', 'amphtml', 'version'), __FILE__)

Gem::Specification.new do |gem|
    gem.name        = "amphtml"
    gem.version     = Amphtml::VERSION
    gem.platform    = Gem::Platform::RUBY
    gem.date        = "2017-03-12"
    gem.summary     = "Reliable and high-performant apps with AMP & Rails."
    gem.description = "IN DEVELOPMENT - Reliable and high-performant apps across devices and distribution platforms with AMP & Rails."
    gem.authors     = ["Jonas Hübotter"]
    gem.email       = "jonas@slooob.com"
    gem.homepage    = "http://github.com/jonhue/amphtml"
    gem.license     = "MIT"

    gem.files         = `git ls-files`.split("\n")
    gem.require_paths = ["lib"]

    gem.post_install_message = IO.read('INSTALL.md')

    gem.required_ruby_version = '>= 2.2'
    gem.add_dependency 'rails', '~> 5.0'
    gem.add_dependency 'thor', '~> 0.19.4'
    gem.add_dependency 'launchy', '~> 2.4', '>= 2.4.3'
    gem.add_dependency 'highline', '~> 1.7', '>= 1.7.8'
end
