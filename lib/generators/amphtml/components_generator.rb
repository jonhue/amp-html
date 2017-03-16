require 'rails/generators/base'
require 'thor'

module Amphtml
    module Generators

        class ComponentsGenerator < Rails::Generators::Base

            desc "Install AMP-HTML components."


            class_option :format, desc: "Set the views format. Defaults to `amp`", type: :string, default: "amp", aliases: '-f'


            # COMPONENTS
            class_option :all, desc: "Install all AMP-HTML components", type: :boolean, default: false, aliases: '-a'

            class_option :analytics, desc: "Install amp-analytics tag", type: :boolean, default: false
            class_option :iframe, desc: "Install amp-iframe tag", type: :boolean, default: false
            class_option :notifications, desc: "Install amp-user-notification tag", type: :boolean, default: false
            class_option :anim, desc: "Install amp-anim tag", type: :boolean, default: false
            class_option :ad, desc: "Install amp-ad and amp-sticky-ad tag", type: :boolean, default: false
            class_option :social, desc: "Install social amp tags", type: :boolean, default: false




            def create_views
                source_root File.expand_path("../../templates/views/components", __FILE__)
                template "_components.html.erb", "app/views/application/amp/_components.#{options[:format]}"
            end

            def create_helpers
                source_root File.expand_path("../../templates/helpers/amp/components", __FILE__)

                template "analytics_tag_helper.rb", "app/helpers/amp/components/analytics_tag_helper.rb" if options[:all] || options[:analytics]
                template "iframe_tag_helper.rb", "app/helpers/amp/components/iframe_tag_helper.rb" if options[:all] || options[:iframe]
                template "notification_tag_helper.rb", "app/helpers/amp/components/notification_tag_helper.rb" if options[:all] || options[:notifications]
                template "anim_tag_helper.rb", "app/helpers/amp/components/anim_tag_helper.rb" if options[:all] || options[:anim]
                template "ad_tag_helper.rb", "app/helpers/amp/components/ad_tag_helper.rb" if options[:all] || options[:ad]
                template "social_tag_helper.rb", "app/helpers/amp/components/social_tag_helper.rb" if options[:all] || options[:social]
            end

            def show_readme
                source_root File.expand_path("../../templates/views/components", __FILE__)
                readme "README.md"
            end

        end

    end
end
