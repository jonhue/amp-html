require 'rails/generators/base'
require 'thor'

module Amphtml
    module Generators

        class AssetsGenerator < Rails::Generators::Base

            source_root File.expand_path("../../templates/assets", __FILE__)
            desc "Generate assets to allow for use of the asset pipeline."

            class_option :stylesheets, desc: "Generate stylesheet assets", type: :boolean, default: false, aliases: '-s'
            class_option :javascripts, desc: "Generate javascript assets", type: :boolean, default: false, aliases: '-j'



            if options.size < 0 || options[:stylesheets]
                def create_stylesheet_assets
                    template "stylesheets/application.scss", "app/assets/stylesheets/amp/application.scss"
                end
            elsif options.size < 0 || options[:javascripts]
                def create_javascript_assets
                    template "javascripts/application.js", "app/assets/javascripts/amp/application.js"
                end
            end

            def show_readme
                readme "README"
            end

        end

    end
end
