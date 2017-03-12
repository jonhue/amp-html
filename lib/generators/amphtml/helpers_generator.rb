require 'rails/generators/base'

module Amphtml
    module Generators

        class HelpersGenerator < Rails::Generators::Base

            source_root File.expand_path("../../templates/helpers", __FILE__)

            def create_views
                template "asset_tag_helper.rb", "app/helpers/asset_tag_helper.rb"
            end

            def show_readme
                readme "README"
            end

        end

    end
end
