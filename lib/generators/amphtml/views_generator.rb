require 'rails/generators/base'
require 'thor'

module Amphtml
    module Generators

        class ViewsGenerator < Rails::Generators::Base

            desc "Updates views to ensure compatibility with AMP. Run with --split to keep a version without AMP."

            class_option :split, desc: "Keep an application layout without AMP", type: :boolean, default: false, aliases: '-s'

            unless options[:split]
                source_root File.expand_path("../../templates/views", __FILE__)
                def create_views
                    template "application.html.erb", "app/views/layouts/application.html.erb"
                    template "_amp.html", "app/views/application/_amp.html"
                end
            else
                source_root File.expand_path("../../templates/views/split", __FILE__)
                def create_views
                    template "application.html.erb", "app/views/layouts/application.html.erb"
                end
            end

            def show_readme
                readme "README"
            end

        end

    end
end
