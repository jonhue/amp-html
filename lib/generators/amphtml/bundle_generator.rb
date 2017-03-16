require 'rails/generators/base'
require 'thor'

module Amphtml
    module Generators

        class BundleGenerator < Rails::Generators::Base

            desc "Bundle all amphtml generators."


            class_option :split, desc: "Keep an application layout without AMP", type: :boolean, default: false, aliases: '-s'
            class_option :format, desc: "Set the views format. Defaults to `amp`", type: :string, default: "amp", aliases: '-f'


            # ASSETS
            class_option :stylesheets, desc: "Generate stylesheet assets", type: :boolean, default: false, aliases: '-s'
            class_option :javascripts, desc: "Generate javascript assets", type: :boolean, default: false, aliases: '-j'


            # COMPONENTS
            class_option :all, desc: "Include everything", type: :boolean, default: false, aliases: '-a'

            class_option :anim, desc: "Include amp-anim tag", type: :boolean, default: false
            class_option :ad, desc: "Include amp-ad and amp-sticky-ad tag", type: :boolean, default: false
            class_option :iframe, desc: "Include amp-iframe tag", type: :boolean, default: false
            class_option :analytics, desc: "Include amp-analytics tag", type: :boolean, default: false
            class_option :notifications, desc: "Include amp-user-notification tag", type: :boolean, default: false
            class_option :social, desc: "Include social amp tags", type: :boolean, default: false



            def run_generators
                generate "amphtml:install"
                generate "amphtml:helpers"
                generate "amphtml:views"
                generate "amphtml:assets"
            end

        end

    end
end
