# -*- encoding: utf-8 -*-
require File.expand_path(File.join('..', 'lib', 'amphtml', 'version'), __FILE__)

Gem::Specification.new do |gem|
    gem.name                  = "amphtml"
    gem.version               = Amphtml::VERSION
    gem.platform              = Gem::Platform::RUBY
    gem.summary               = "Reliable and high-performant apps with AMP & Rails."
    gem.description           = "[BETA] Amphtml is a universal solution to integrate the AMP Project (Accelerated Mobile Pages Project) into your Rails app with ease. It enables you to quickly spin-up, build and test your app with AMP, while fulfilling the app's unique requirements. It comes with a bunch of superpowers like user authentication, notifications, blogs, animations and support for assets in AMP. Make your app consistently fast, beautiful and high-performing across devices and distribution platforms."
    gem.authors               = ["Jonas Hübotter"]
    gem.email                 = "jonas@slooob.com"
    gem.homepage              = "https://github.com/slooob/amphtml" # https://railsamp.com
    gem.license               = "MIT"

    gem.files                 = `git ls-files`.split("\n")
    gem.require_paths         = ["lib"]
    gem.bindir                = "bin"
    gem.executables           = ["amphtml"]

    gem.post_install_message  = IO.read('INSTALL.md')

    gem.required_ruby_version = '>= 2.0'


    gem.add_dependency 'rails', '>= 4.0.0'
    gem.add_dependency 'thor', '~> 0.19.4'
    gem.add_dependency 'launchy', '~> 2.4'
    gem.add_dependency 'highline', '~> 1.7'
end
