require 'rails/generators/base'
require 'thor'

module Amphtml
    module Generators

        class ViewsGenerator < Rails::Generators::Base

            source_root File.expand_path("../../templates/views", __FILE__)
            desc "Updates views to ensure compatibility with AMP. Run with --split to keep a version without AMP."


            class_option :split, desc: "Keep an application layout without AMP", type: :boolean, default: false, aliases: '-s'
            class_option :format, desc: "Set the views format. Defaults to `html`", type: :string, aliases: '-f'


            # DEEP INTEGRATION COMPONENTS
            class_option :all, desc: "Include everything", type: :boolean, default: false, aliases: '-a'

            class_option :analytics, desc: "Include amp-analytics tag", type: :boolean, default: false




            def create_views
                template "application/_resources.html.erb", "app/views/application/amp/_resources.#{pick_format}.erb"
                template "application/_head.html.erb", "app/views/application/amp/_head.#{pick_format}.erb"
                template "application/_schema.html.erb", "app/views/application/amp/_schema.#{pick_format}.erb"
                template "application.html.erb", "app/views/layouts/application.#{pick_format}.erb"
            end

            def create_mime_types
                template "config/mime_types.rb", "config/initializers/mime_types.rb"
            end

            def show_readme
                readme "README.md"
            end


            private


            def pick_format
                if options[:format]
                    options[:format]
                else
                    if options[:split]
                        "amp"
                    else
                        "html"
                    end
                end
            end

        end

    end
end
