require 'rails/generators/base'

module Amphtml
    module Generators

        class HelpersGenerator < Rails::Generators::Base

            source_root File.expand_path("../../templates/helpers", __FILE__)

            desc "Generate AMP Tag Helpers. Run with --split to keep a version without AMP."

            class_option :split, desc: "Keep an application layout without AMP", type: :boolean, default: false, aliases: '-s'

            def create_helper
                unless options[:split]
                    template "asset_tag_helper.rb", "app/helpers/asset_tag_helper.rb"
                else
                    template "split/asset_tag_helper.rb", "app/helpers/asset_tag_helper.rb"
                end

                template "noscript_tag_helper.rb", "app/helpers/noscript_tag_helper.rb"
                template "amp/amp_tag_helper.rb", "app/helpers/amp/amp_tag_helper.rb"

                template "amp/components/ad_tag_helper.rb", "app/helpers/amp/components/ad_tag_helper.rb"
                template "amp/components/iframe_tag_helper.rb", "app/helpers/amp/components/iframe_tag_helper.rb"
                template "amp/components/analytics_tag_helper.rb", "app/helpers/amp/components/analytics_tag_helper.rb"
                template "amp/components/notification_tag_helper.rb", "app/helpers/amp/components/notification_tag_helper.rb"

                template "amp/social_tag_helper.rb", "app/helpers/amp/social_tag_helper.rb"
            end

            def show_readme
                readme "README"
            end

        end

    end
end
