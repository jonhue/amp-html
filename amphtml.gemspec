# -*- encoding: utf-8 -*-
require File.expand_path(File.join('..', 'lib', 'amphtml', 'version'), __FILE__)

Gem::Specification.new do |gem|
    gem.name        = "amphtml"
    gem.version     = Amphtml::VERSION
    gem.date        = "2017-03-12"
    gem.summary     = "Reliable and highly-performant Rails apps with AMP."
    gem.description = "IN DEVELOPMENT - The AMP Project for Rails. Make your Rails app consistently fast, beautiful and high-performing across devices and distribution platforms."
    gem.authors     = ["Jonas Hübotter"]
    gem.email       = "jonas@slooob.com"
    gem.homepage    = "http://jonhue.me/amphtml"
    gem.license     = "MIT"

    gem.files         = `git ls-files`.split("\n")
    gem.require_paths = ["lib"]
    gem.post_install_message = "Thanks for installing!"

    gem.required_ruby_version = '>= 2.2'
    gem.add_dependency 'rails', '~> 5.0'
end
