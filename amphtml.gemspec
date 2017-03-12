# -*- encoding: utf-8 -*-
require File.expand_path(File.join('..', 'lib', 'amphtml', 'version'), __FILE__)

Gem::Specification.new do |gem|
    gem.name        = "amphtml"
    gem.version     = Amphtml::VERSION
    gem.date        = "2017-03-12"
    gem.summary     = "Reliable and highly-performant Rails apps with AMP."
    gem.description = "The AMP Project for Rails. Make your Rails app consistently fast, beautiful and high-performing across devices and distribution platforms."
    gem.authors     = ["Jonas Hübotter"]
    gem.email       = "jonas@slooob.com"
    gem.files       = ["lib"]
    gem.homepage    = "https://jonhue.me/amphtml"
    gem.license     = "MIT"

    gem.bindir = "bin"

    gem.require_paths = ["lib"]

    gem.required_ruby_version = '>= 2.2'

    gem.add_development_dependency 'rspec', '~> 3.5'
    gem.add_development_dependency 'rake', '~> 12.0'

    gem.post_install_message = "Thanks for installing!"
end
