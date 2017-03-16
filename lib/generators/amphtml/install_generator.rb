require 'rails/generators/base'
require 'thor'

module Amphtml
    module Generators

        class InstallGenerator < Rails::Generators::Base

            source_root File.expand_path("../../templates/install", __FILE__)
            desc "Install AMP-HTML. Run with --split to keep a version without AMP."


            class_option :split, desc: "Keep an application layout without AMP", type: :boolean, default: false, aliases: '-s'
            class_option :format, desc: "Set the views format. Defaults to `amp`", type: :string, default: "amp", aliases: '-f'


            # COMPONENTS
            class_option :all, desc: "Include everything", type: :boolean, default: false, aliases: '-a'

            class_option :analytics, desc: "Include amp-analytics tag", type: :boolean, default: false
            class_option :iframe, desc: "Include amp-iframe tag", type: :boolean, default: false
            class_option :notifications, desc: "Include amp-user-notification tag", type: :boolean, default: false
            class_option :anim, desc: "Include amp-anim tag", type: :boolean, default: false
            class_option :ad, desc: "Include amp-ad and amp-sticky-ad tag", type: :boolean, default: false
            class_option :social, desc: "Include social amp tags", type: :boolean, default: false



            def create_configuration
                template "amphtml.yml.erb", "config/amphtml.yml"
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
