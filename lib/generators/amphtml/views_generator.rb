require 'rails/generators/base'
require 'thor'

module Amphtml
    module Generators

        class ViewsGenerator < Rails::Generators::Base

            source_root File.expand_path("../../templates/views", __FILE__)
            desc "Updates views to ensure compatibility with AMP. Run with --split to keep a version without AMP."


            class_option :split, desc: "Keep an application layout without AMP", type: :boolean, default: false, aliases: '-s'
            class_option :format, desc: "Set the views format. Defaults to `amp`", type: :string, default: "amp", aliases: '-f'


            # DEEB INTEGRATION COMPONENTS
            class_option :all, desc: "Include everything", type: :boolean, default: false, aliases: '-a'

            class_option :analytics, desc: "Include amp-analytics tag", type: :boolean, default: false




            def create_views
                if options[:split]
                    template "application/_resources.html.erb", "app/views/application/amp/_resources.#{options[:format]}"
                    template "application.html.erb", "app/views/layouts/application.#{options[:format]}.erb"
                else
                    template "application/_resources.html.erb", "app/views/application/amp/_resources.#{options[:format]}"
                    template "application.html.erb", "app/views/layouts/application.#{options[:format]}.erb"
                end
            end

            def add_mime_types
                template "config/mime_types.rb", "config/mime_types.rb"
            end

            def show_readme
                readme "README.md"
            end

        end

    end
end
