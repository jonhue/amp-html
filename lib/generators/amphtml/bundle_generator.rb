require 'rails/generators/base'
require 'thor'

module Amphtml
    module Generators

        class BundleGenerator < Rails::Generators::Base

            desc "Bundle all amphtml generators."


            class_option :split, desc: "Keep an application layout without AMP", type: :boolean, default: false, aliases: '-s'
            class_option :format, desc: "Set the views format. Defaults to `html`", type: :string, aliases: '-f'


            # CONFIGURATION
            class_option :name, desc: "Set the name of your app", type: :string, default: "MyApp", aliases: '-n'


            # ASSETS
            class_option :stylesheets, desc: "Generate stylesheet assets", type: :boolean, default: false, aliases: '-st'


            # COMPONENTS
            class_option :all, desc: "Install all AMP-HTML components", type: :boolean, default: false, aliases: '-a'

            class_option :analytics, desc: "Install the AMP-HTML Analytics Component", type: :boolean, default: false
            class_option :iframe, desc: "Install the AMP-HTML Iframe Component", type: :boolean, default: false
            class_option :notifications, desc: "Install the AMP-HTML Notifications Component", type: :boolean, default: false
            class_option :anim, desc: "Install the AMP-HTML Animated Images Component", type: :boolean, default: false
            class_option :ad, desc: "Install the AMP-HTML Advertisements Component", type: :boolean, default: false
            class_option :social, desc: "Install the AMP-HTML Social Component", type: :boolean, default: false
            class_option :javascript, desc: "Install the AMP-HTML Javascript Component", type: :boolean, default: false



            def run_generators
                generate "amphtml:install#{ ' -s' if options[:split] }#{ ' -f ' + options[:format] if options[:format] }#{ ' -n ' if options[:name] }'#{ options[:name] if options[:name] }'#{ ' -a' if options[:all] }#{ ' --anim' if options[:anim] }#{ ' --ad' if options[:ad] }#{ ' --iframe' if options[:iframe] }#{ ' --analytics' if options[:analytics] }#{ ' --notifications' if options[:notifications] }#{ ' --social' if options[:social] }"
                generate "amphtml:helpers#{ ' -s' if options[:split] }"
                generate "amphtml:views#{ ' -s' if options[:split] }#{ ' -f ' + options[:format] if options[:format] }#{ ' -a' if options[:all] }#{ ' --analytics' if options[:analytics] }"
                generate "amphtml:assets#{ ' -st' if options[:stylesheets] }"
                generate "amphtml:components#{ ' -s' if options[:split] }#{ ' -f ' + options[:format] if options[:format] }#{ ' -a' if options[:all] }#{ ' --anim' if options[:anim] }#{ ' --ad' if options[:ad] }#{ ' --iframe' if options[:iframe] }#{ ' --analytics' if options[:analytics] }#{ ' --notifications' if options[:notifications] }#{ ' --social' if options[:social] }#{ ' --javascript' if options[:javascript] }"
            end

        end

    end
end
