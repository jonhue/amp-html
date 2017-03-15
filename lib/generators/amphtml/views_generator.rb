require 'rails/generators/base'
require 'thor'

module Amphtml
    module Generators

        class ViewsGenerator < Rails::Generators::Base

            desc "Updates views to ensure compatibility with AMP. Run with --split to keep a version without AMP."

            class_option :split, desc: "Keep an application layout without AMP", type: :boolean, default: false, aliases: '-s'

            class_option :all, desc: "Include everything", type: :boolean, default: false, aliases: '-a'
            class_option :anim, desc: "Include amp-anim tag", type: :boolean, default: false
            class_option :ad, desc: "Include amp-ad and amp-sticky-ad tag", type: :boolean, default: false
            class_option :iframe, desc: "Include amp-iframe tag", type: :boolean, default: false
            class_option :analytics, desc: "Include amp-analytics tag", type: :boolean, default: false
            class_option :notifications, desc: "Include amp-user-notification tag", type: :boolean, default: false
            class_option :social, desc: "Include social amp tags", type: :boolean, default: false

            unless options[:split]
                source_root File.expand_path("../../templates/views", __FILE__)
                def create_views
                    template "application.html.erb", "app/views/layouts/application.html.erb"
                    template "_amp.html.erb", "app/views/application/_amp.html"
                end
            else
                source_root File.expand_path("../../templates/views/split", __FILE__)
                def create_views
                    template "application.html.erb", "app/views/layouts/application.html.erb"
                end
            end

            def add_mime_types
                open("config/mime_types.rb", "a") do |f|
                    f.puts "Mime::Type.register_alias 'text/html', Amphtml.format"
                end
            end

            def show_readme
                readme "README"
            end

        end

    end
end
