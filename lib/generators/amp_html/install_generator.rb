require 'rails/generators/base'
require 'thor'

module AmpHtml
    module Generators

        class InstallGenerator < Rails::Generators::Base

            source_root File.expand_path '../../templates/install', __FILE__
            desc 'Install amp-html'


            def create_initializer
                template 'amp-html.rb', 'config/initializers/amp-html.rb'
            end

        end

    end
end
