require 'rails/generators/base'
require 'thor'

module Amphtml
    module Generators

        class ComponentsGenerator < Rails::Generators::Base

            source_root File.expand_path("../../templates/views/components", __FILE__)
            desc "Bundle components."


            class_option :format, desc: "Set the views format. Defaults to `amp`", type: :string, default: "amp", aliases: '-f'


            # COMPONENTS
            class_option :all, desc: "Include everything", type: :boolean, default: false, aliases: '-a'

            class_option :analytics, desc: "Include amp-analytics tag", type: :boolean, default: false
            class_option :iframe, desc: "Include amp-iframe tag", type: :boolean, default: false
            class_option :notifications, desc: "Include amp-user-notification tag", type: :boolean, default: false
            class_option :anim, desc: "Include amp-anim tag", type: :boolean, default: false
            class_option :ad, desc: "Include amp-ad and amp-sticky-ad tag", type: :boolean, default: false
            class_option :social, desc: "Include social amp tags", type: :boolean, default: false




            def create_views
                template "_components.html.erb", "app/views/application/amp/_components.#{options[:format]}"
            end

            def show_readme
                readme "README"
            end

        end

    end
end
