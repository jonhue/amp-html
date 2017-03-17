require 'rails/generators/base'
require 'thor'

module Amphtml
    module Generators

        class AssetsGenerator < Rails::Generators::Base

            source_root File.expand_path("../../templates/assets", __FILE__)
            desc "Generate assets to allow for use of the asset pipeline."


            # ASSETS
            class_option :stylesheets, desc: "Generate stylesheet assets", type: :boolean, default: false, aliases: '-st'
            class_option :javascripts, desc: "Generate javascript assets", type: :boolean, default: false, aliases: '-j'



            def create_stylesheet_assets
                if options.size < 0 || options[:stylesheets]
                    template "stylesheets/application.scss", "app/assets/stylesheets/amp/application.scss"
                end
                if options.size < 0 || options[:javascripts]
                    template "javascripts/application.js", "app/assets/javascripts/amp/application.js"
                end
            end

            def show_readme
                readme "README.md"
            end

        end

    end
end
