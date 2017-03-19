require 'rails/generators/base'
require 'thor'

module Amphtml
    module Generators

        class InstallGenerator < Rails::Generators::Base

            source_root File.expand_path("../../templates/install", __FILE__)
            desc "Install AMP-HTML. Run with --split to keep a version without AMP."

            class_option :only_initializer, desc: "Only generate initializer", type: :boolean, default: false


            class_option :split, desc: "Keep an application layout without AMP", type: :boolean, default: false, aliases: '-s'
            class_option :format, desc: "Set the views format. Defaults to `html`", type: :string, aliases: '-f'


            # CONFIGURATION
            class_option :name, desc: "Set the name of your app", type: :string, default: "MyApp", aliases: '-n'


            # COMPONENTS
            class_option :all, desc: "Install all AMP-HTML components", type: :boolean, default: false, aliases: '-a'

            class_option :analytics, desc: "Install the AMP-HTML Analytics Component", type: :boolean, default: false
            class_option :iframe, desc: "Install the AMP-HTML Iframe Component", type: :boolean, default: false
            class_option :notifications, desc: "Install the AMP-HTML Notifications Component", type: :boolean, default: false
            class_option :anim, desc: "Install the AMP-HTML Animated Images Component", type: :boolean, default: false
            class_option :ad, desc: "Install the AMP-HTML Advertisements Component", type: :boolean, default: false
            class_option :social, desc: "Install the AMP-HTML Social Component", type: :boolean, default: false
            class_option :javascript, desc: "Install the AMP-HTML Javascript Component", type: :boolean, default: false



            def create_configuration
                template "amphtml.yml.erb", "config/amphtml.yml" unless options[:only_initializer]
            end

            def create_initializer
                template "amphtml.rb.erb", "config/initializers/amphtml.rb"
            end

            def show_readme
                readme "README.md"
            end

        end

    end
end
