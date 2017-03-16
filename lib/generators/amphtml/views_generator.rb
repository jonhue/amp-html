require 'rails/generators/base'
require 'thor'

module Amphtml
    module Generators

        class ViewsGenerator < Rails::Generators::Base

            source_root File.expand_path("../../templates/views", __FILE__)
            desc "Updates views to ensure compatibility with AMP. Run with --split to keep a version without AMP."


            class_option :split, desc: "Keep an application layout without AMP", type: :boolean, default: false, aliases: '-s'
            class_option :format, desc: "Set the views format. Defaults to `amp`", type: :string, default: "amp", aliases: '-f'




            def create_views
                if options[:split]
                    template "_resources.html.erb", "app/views/application/amp/_resources.#{options[:format]}"
                    template "application.html.erb", "app/views/layouts/application.#{options[:format]}.erb"
                else
                    template "_resources.html.erb", "app/views/application/amp/_resources.#{options[:format]}"
                    template "application.html.erb", "app/views/layouts/application.#{options[:format]}.erb"
                end
            end

            def add_mime_types
                open("config/mime_types.rb", "a") do |f|
                    f << "# AMP-HTML - Setting the format for AMP Views\n"
                    f << "Mime::Type.register_alias 'text/html', Amphtml.format\n"
                end
            end

            def show_readme
                readme "README"
            end

        end

    end
end
