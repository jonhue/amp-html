require 'rails/generators/base'

module Amphtml
    module Generators

        class InstallGenerator < Rails::Generators::Base

            source_root File.expand_path("../../templates", __FILE__)

            def copy_initializer
                template "amphtml.rb", "config/initializers/amphtml.rb"
            end

            def show_readme
                readme "README"
            end

        end

    end
end
