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

                directory 'amp', 'app/helpers/amp'
                template "amp_tag_helper.rb.erb", "app/helpers/amp/amp_tag_helper.rb"
            end

            def show_readme
                readme "README.md"
            end

        end

    end
end
