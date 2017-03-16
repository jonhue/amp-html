require 'rails/generators/base'
require 'thor'

module Amphtml
    module Generators

        class HelpersGenerator < Rails::Generators::Base

            source_root File.expand_path("../../templates/helpers", __FILE__)
            desc "Generate AMP Tag Helpers. Run with --split to keep a version without AMP."


            class_option :split, desc: "Keep an application layout without AMP", type: :boolean, default: false, aliases: '-s'



            def create_helpers
                template "asset_tag_helper.rb.erb", "app/helpers/asset_tag_helper.rb"

                template "amp/amp_tag_helper.rb", "app/helpers/amp/amp_tag_helper.rb"
                template "amp/noscript_tag_helper.rb", "app/helpers/amp/noscript_tag_helper.rb"
                template "amp/fonts_tag_helper.rb", "app/helpers/amp/fonts_tag_helper.rb"
            end

            def show_readme
                readme "README"
            end

        end

    end
end
