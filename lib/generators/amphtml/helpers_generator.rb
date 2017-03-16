require 'rails/generators/base'
require 'thor'

module Amphtml
    module Generators

        class HelpersGenerator < Rails::Generators::Base

            source_root File.expand_path("../../templates/helpers", __FILE__)
            desc "Generate AMP Tag Helpers. Run with --split to keep a version without AMP."


            class_option :split, desc: "Keep an application layout without AMP", type: :boolean, default: false, aliases: '-s'


            # COMPONENTS
            class_option :all, desc: "Include everything", type: :boolean, default: false, aliases: '-a'

            class_option :analytics, desc: "Include amp-analytics tag", type: :boolean, default: false
            class_option :iframe, desc: "Include amp-iframe tag", type: :boolean, default: false
            class_option :notifications, desc: "Include amp-user-notification tag", type: :boolean, default: false
            class_option :anim, desc: "Include amp-anim tag", type: :boolean, default: false
            class_option :ad, desc: "Include amp-ad and amp-sticky-ad tag", type: :boolean, default: false
            class_option :social, desc: "Include social amp tags", type: :boolean, default: false



            def create_helper
                template "asset_tag_helper.rb.erb", "app/helpers/asset_tag_helper.rb"

                template "noscript_tag_helper.rb", "app/helpers/noscript_tag_helper.rb"
                template "amp/amp_tag_helper.rb", "app/helpers/amp/amp_tag_helper.rb"

                template "amp/components/ad_tag_helper.rb", "app/helpers/amp/components/ad_tag_helper.rb"
                template "amp/components/iframe_tag_helper.rb", "app/helpers/amp/components/iframe_tag_helper.rb"
                template "amp/components/analytics_tag_helper.rb", "app/helpers/amp/components/analytics_tag_helper.rb"
                template "amp/components/notification_tag_helper.rb", "app/helpers/amp/components/notification_tag_helper.rb"
                template "amp/components/fonts_tag_helper.rb", "app/helpers/amp/components/fonts_tag_helper.rb"

                template "amp/social_tag_helper.rb", "app/helpers/amp/social_tag_helper.rb"
            end

            def show_readme
                readme "README"
            end

        end

    end
end
