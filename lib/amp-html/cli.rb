require 'thor'

class AmpHtml::Cli < Thor

    check_unknown_options!

    desc 'version', 'Display currently used version'
    map %w[--version] => :version

    def version
        puts ::AmpHtml::Version.current
    end


    desc 'helpers', 'Learn more about AMP-HTML view helpers'
    map %w[--helpers] => :helpers

    def helpers
        puts ::AmpHtml::Helpers::Help.all
    end


    desc 'helper NAME', 'Get infomration about a specific AMP-HTML helper'
    map %w[--helper] => :helper

    def helper name
        puts ::AmpHtml::Helpers::Help.helper name
    end


    desc 'configuration', 'Learn how to configure AMP-HTML'
    map %w[--configuration] => :configuration

    def configuration
        puts ::AmpHtml::Configuration::Help.all
    end


    desc 'components', 'Learn more about AMP-HTML installable components'
    map %w[--components] => :components

    def components
        puts ::AmpHtml::Components::Help.all
    end


    desc 'component NAME', 'Get infomration about a specific AMP-HTML installable component'
    map %w[--component] => :component

    def component name
        puts ::AmpHtml::Components::Help.component name
    end


    desc 'bundle', 'Install all AMP-HTML components specified in the config/AmpHtml.yml file'
    map %w[-b --bundle] => :bundle

    def bundle
        puts ::AmpHtml::Components::Install.bundle
    end

    desc 'install COMPONENT', 'Install a specific AMP-HTML component'
    map %w[-b --bundle] => :install

    def install component
        puts ::AmpHtml::Components::Install.install component
    end


    desc 'validate URL', 'Validate a specific AMP-HTML view'
    map %w[--validate] => :validate

    option :server_running, desc: 'Passes information that the server is running (optional)', type: :boolean, default: false, aliases: '-r'
    option :help, desc: 'Additional help information', type: :boolean, default: false, aliases: '-h'

    def validate url
        unless options[:help]
            if options[:server_running]
                puts ::AmpHtml::Validate.validate url, true
            else
                puts ::AmpHtml::Validate.validate url, false
            end
        else
            puts ::AmpHtml::Validate::Help.all
        end
    end


    desc 'test NAME', 'Test AMP-HTML components. Run test all to bundle tests.'
    map %w[-t --test] => :test

    option :split, desc: 'Use this option if you are using SplitView', type: :boolean, default: false, aliases: '-s'
    # option :fix, desc: 'Suggest ways to fix errors along the way', type: :boolean, default: false, aliases: '-f'
    # option :autofix, desc: 'Attempt to automatically fix errors (not recommended)', type: :boolean, default: false, aliases: '-af'
    option :help, desc: 'Additional help information', type: :boolean, default: false, aliases: '-h'

    def test name
        unless options[:help]
            if name == 'all'
                puts ::AmpHtml::Test.all
            elsif name == 'markup'
                puts ::AmpHtml::Test.markup
            elsif name == 'html'
                puts ::AmpHtml::Test.html
            elsif name == 'css'
                puts ::AmpHtml::Test.css
            end
        else
            puts ::AmpHtml::Test::Help.all
        end
    end

end
