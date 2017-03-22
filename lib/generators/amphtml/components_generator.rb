require 'rails/generators/base'
require 'thor'

module Amphtml
    module Generators

        class ComponentsGenerator < Rails::Generators::Base

            source_root File.expand_path("../../templates/components", __FILE__)
            desc "Install AMP-HTML components."


            class_option :split, desc: "Keep an application layout without AMP", type: :boolean, default: false, aliases: '-s'
            class_option :format, desc: "Set the views format. Defaults to `html`", type: :string, aliases: '-f'


            # COMPONENTS
            class_option :all, desc: "Install all AMP-HTML components", type: :boolean, default: false, aliases: '-a'

            class_option :analytics, desc: "Install the AMP-HTML Analytics Component", type: :boolean, default: false
            class_option :iframe, desc: "Install the AMP-HTML Iframe Component", type: :boolean, default: false
            class_option :notifications, desc: "Install the AMP-HTML Notifications Component", type: :boolean, default: false
            class_option :anim, desc: "Install the AMP-HTML Animated Images Component", type: :boolean, default: false
            class_option :ad, desc: "Install the AMP-HTML Advertisements Component", type: :boolean, default: false
            class_option :social, desc: "Install the AMP-HTML Social Component", type: :boolean, default: false
            class_option :javascript, desc: "Install the AMP-HTML Javascript Component", type: :boolean, default: false
            class_option :service_worker, desc: "Install the AMP-HTML Service Worker Component", type: :boolean, default: false




            def create_views
                template "views/_components.html.erb", "app/views/application/amp/_components.#{pick_format}.erb"

                FileUtils.rm_rf('app/views/application/amp/components')
                template "views/_google_analytics.html.erb", "app/views/application/amp/components/_google_analytics.#{pick_format}.erb" if options[:all] || options[:analytics] || options[:notifications]
            end

            def create_helpers
                FileUtils.rm_rf('app/helpers/amp/components')
                template "helpers/analytics_tag_helper.rb", "app/helpers/amp/components/analytics_tag_helper.rb" if options[:all] || options[:analytics] || options[:notifications]
                template "helpers/iframe_tag_helper.rb", "app/helpers/amp/components/iframe_tag_helper.rb" if options[:all] || options[:iframe] || options[:javascript] || options[:service_worker]
                template "helpers/notification_tag_helper.rb", "app/helpers/amp/components/notification_tag_helper.rb" if options[:all] || options[:notifications]
                template "helpers/anim_tag_helper.rb", "app/helpers/amp/components/anim_tag_helper.rb" if options[:all] || options[:anim]
                template "helpers/ad_tag_helper.rb", "app/helpers/amp/components/ad_tag_helper.rb" if options[:all] || options[:ad]
                template "helpers/social_tag_helper.rb", "app/helpers/amp/components/social_tag_helper.rb" if options[:all] || options[:social]
                template "helpers/javascript_tag_helper.rb", "app/helpers/amp/components/javascript_tag_helper.rb" if options[:all] || options[:javascript]
                template "helpers/serviceworker_tag_helper.rb", "app/helpers/amp/components/serviceworker_tag_helper.rb" if options[:all] || options[:service_worker]
            end

            def create_assets
                template "assets/javascripts/application.js", "app/assets/javascripts/amp/application.js" if options[:all] || options[:javascript]
            end

            def create_files
                template "public/remote.html", "public/remote.html" if options[:all] || options[:ad]
            end

            def show_readme
                readme "README.md"
            end


            private


            def pick_format
                if options[:format]
                    options[:format]
                else
                    if options[:split]
                        "amp"
                    else
                        "html"
                    end
                end
            end

        end

    end
end
