require 'rails/generators/base'

module Amphtml
    module Generators

        class ViewsGenerator < Rails::Generators::Base

            source_root File.expand_path("../../templates/views", __FILE__)

            def create_views
                template "application.html.erb", "app/views/layouts/application.html.erb"
            end

            def show_readme
                readme "README"
            end

        end

    end
end
