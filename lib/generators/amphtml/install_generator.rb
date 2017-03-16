require 'rails/generators/base'
require 'thor'

module Amphtml
    module Generators

        class InstallGenerator < Rails::Generators::Base

            source_root File.expand_path("../../templates/install", __FILE__)
            desc "Install AMP-HTML. Run with --split to keep a version without AMP."


            class_option :split, desc: "Keep an application layout without AMP", type: :boolean, default: false, aliases: '-s'



            def create_configuration
                template "amphtml.yml.erb", "config/amphtml.yml"
            end
            
            def create_initializer
                template "amphtml.rb.erb", "config/initializers/amphtml.rb"
            end

            def show_readme
                readme "README"
            end

        end

    end
end
