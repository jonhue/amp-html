require 'rails/generators/base'
require 'thor'

module AmpHtml
    module Generators

        class AmpHtmlGenerator < Rails::Generators::Base

            source_root File.join File.dirname(__FILE__), 'templates'
            desc 'Install amp-html'

            def create_layout
                template 'layout.html.erb', 'app/views/layouts/amp.html.erb'
            end

            def create_assets
                template 'application.css', 'app/assets/stylesheets/amp/application.css'
            end

            def create_initializer
                template 'initializer.rb', 'config/initializers/amp-html.rb'
            end

        end

    end
end
