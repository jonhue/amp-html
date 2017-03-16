require 'thor'

class Amphtml::Cli < Thor

    check_unknown_options!

    desc "version", "Display currently used version"
    map %w[--version] => :version

    def version
        puts ::Amphtml::Version.current
    end


    desc "helpers", "Learn more about AMP-HTML view helpers"
    map %w[--helpers] => :helpers

    def helpers
        puts ::Amphtml::Helpers::Help.all
    end


    desc "helper NAME", "Get infomration about a specific AMP-HTML helper"
    map %w[--helper] => :helper

    def helper(name)
        puts ::Amphtml::Helpers::Help.helper(name)
    end


    desc "components", "Learn more about AMP-HTML installable components"
    map %w[-c --components] => :components

    def components
        puts ::Amphtml::Components::Help.all
    end


    desc "component NAME", "Get infomration about a specific AMP-HTML installable component"
    map %w[-c --component] => :component

    def component(name)
        puts ::Amphtml::Components::Help.component(name)
    end


    desc "bundle", "Install all AMP-HTML components specified in the config/amphtml.yml file"
    map %w[-b --bundle] => :bundle

    def bundle
        puts ::Amphtml::Components::Install.bundle
    end


    desc "install COMPONENT", "Install a specific AMP-HTML component"
    map %w[-i --install] => :install

    def install(component)
        puts ::Amphtml::Components::Install.component(component)
    end


    desc "validate URL", "Validate a specific AMP-HTML view"
    map %w[--validate] => :validate

    option :server_running, desc: "Passes information that the server is running (optional)", type: :boolean, default: false, aliases: "-r"
    option :help, desc: "Additional help information", type: :boolean, default: false, aliases: "-h"

    def validate(url)
        unless options[:help]
            if url
                puts ::Amphtml::Validate.validate(url)
            else
                puts ::Amphtml::Validate.validate
            end
        else
            puts ::Amphtml::Validate::Help.all
        end
    end


    desc "test NAME", "Test AMP-HTML components. Run test all to bundle tests."
    map %w[-t --test] => :test

    option :split, desc: "Use this option if you are using SplitView", type: :boolean, default: false, aliases: "-s"
    option :fix, desc: "Suggest ways to fix errors along the way", type: :boolean, default: false, aliases: "-f"
    option :autofix, desc: "Attempt to automatically fix errors (not recommended)", type: :boolean, default: false, aliases: "-af"
    option :help, desc: "Additional help information", type: :boolean, default: false, aliases: "-h"

    def test(name)
        unless options[:help]
            if name == "all"
                puts ::Amphtml::Test.all
            elsif name == "markup"
                puts ::Amphtml::Test.markup
            elsif name == "html"
                puts ::Amphtml::Test.html
            elsif name == "css"
                puts ::Amphtml::Test.css
            end
        else
            puts ::Amphtml::Test::Help.all
        end
    end

end
