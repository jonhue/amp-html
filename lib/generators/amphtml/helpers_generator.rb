require 'rails/generators/base'

module Amphtml
    module Generators

        class HelpersGenerator < Rails::Generators::Base

            desc "Generate AMP Tag Helpers. Run with --split to keep a version without AMP."

            class_option :split, desc: "Keep an application layout without AMP", type: :boolean, default: false, aliases: '-s'

            unless options[:split]
                source_root File.expand_path("../../templates/helpers", __FILE__)
                def create_helpers
                    template "asset_tag_helper.rb", "app/helpers/asset_tag_helper.rb"

                    template "amp/amp_tag_helper.rb", "app/helpers/amp/amp_tag_helper.rb"
                    template "amp/component_tag_helper.rb", "app/helpers/amp/component_tag_helper.rb"
                    template "amp/social_tag_helper.rb", "app/helpers/amp/social_tag_helper.rb"
                end
            else
                source_root File.expand_path("../../templates/helpers/split", __FILE__)
                def create_helpers
                    # copy above
                end
            end

            def show_readme
                readme "README"
            end

        end

    end
end
