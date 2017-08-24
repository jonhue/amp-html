module AmpHtml
    module Components

        COMPONENTS = ['analytics', 'iframe', 'notifications', 'anim', 'ad', 'social', 'javascript', 'service_worker', 'lists']

        class Install

            def self.bundle
                success1 = system "rails g amp_html:components#{ ' -s' if AmpHtml.split_view }#{ ' -f ' + AmpHtml.raw_format if AmpHtml.raw_format }#{ ' --analytics' if AmpHtml.components && AmpHtml.components.include?('analytics') || AmpHtml.components && AmpHtml.components.include?('notifications') }#{ ' --iframe' if AmpHtml.components && AmpHtml.components.include?('iframe') || AmpHtml.components && AmpHtml.components.include?('javascript') || AmpHtml.components && AmpHtml.components.include?('service_worker') }#{' --notifications' if AmpHtml.components && AmpHtml.components.include?('notifications') }#{ ' --anim' if AmpHtml.components && AmpHtml.components.include?('anim') }#{ ' --ad' if AmpHtml.components && AmpHtml.components.include?('ad') }#{ ' --social' if AmpHtml.components && AmpHtml.components.include?('social') }#{ ' --javascript' if (AmpHtml.components && AmpHtml.components.include?('javascript')) }#{ ' --service_worker' if (AmpHtml.components && AmpHtml.components.include?('service_worker')) }#{ ' --lists' if (AmpHtml.components && AmpHtml.components.include?('lists')) }"
                success2 = system "rails g amp_html:install --only_initializer#{ ' --javascript' if (AmpHtml.components && AmpHtml.components.include?('javascript')) }"
                if success1 && success2
                    puts IO.read File.join AmpHtml.root, 'amp-html', 'components', 'templates', 'README.md'
                else
                    puts IO.read File.join AmpHtml.root, 'amp-html', 'components', 'templates', 'ERROR.md'
                end
            end

            def self.install component
                if COMPONENTS.include? component
                    success1 = system "rails g amp_html:install#{ ' -s' if AmpHtml.split_view }#{ ' -f ' + AmpHtml.raw_format if AmpHtml.raw_format }#{ ' --analytics' if (AmpHtml.components && AmpHtml.components.include?('analytics')) || AmpHtml.components && AmpHtml.components.include?('notifications') || component == 'analytics' || component == 'notifications' }#{ ' --iframe' if (AmpHtml.components && AmpHtml.components.include?('iframe')) || AmpHtml.components && AmpHtml.components.include?('javascript') || AmpHtml.components && AmpHtml.components.include?('service_worker') || component == 'iframe' || component == 'javascript' || component == 'service_worker' }#{' --notifications' if (AmpHtml.components && AmpHtml.components.include?('notifications')) || component == 'notifications' }#{ ' --anim' if (AmpHtml.components && AmpHtml.components.include?('anim')) || component == 'anim' }#{ ' --ad' if (AmpHtml.components && AmpHtml.components.include?('ad')) || component == 'ad' }#{ ' --social' if (AmpHtml.components && AmpHtml.components.include?('social')) || component == 'social' }#{ ' --javascript' if (AmpHtml.components && AmpHtml.components.include?('javascript')) || component == 'javascript' }#{ ' --service_worker' if (AmpHtml.components && AmpHtml.components.include?('service_worker')) || component == 'service_worker' }#{ ' --lists' if (AmpHtml.components && AmpHtml.components.include?('lists')) || component == 'lists' }"
                    success2 = system "rails g amp_html:components#{ ' -s' if AmpHtml.split_view }#{ ' -f ' + AmpHtml.raw_format if AmpHtml.raw_format }#{ ' --analytics' if (AmpHtml.components && AmpHtml.components.include?('analytics')) || AmpHtml.components && AmpHtml.components.include?('notifications') || component == 'analytics' || component == 'notifications' }#{ ' --iframe' if (AmpHtml.components && AmpHtml.components.include?('iframe')) || AmpHtml.components && AmpHtml.components.include?('javascript') || AmpHtml.components && AmpHtml.components.include?('service_worker') || component == 'iframe' || component == 'javascript' || component == 'service_worker' }#{' --notifications' if (AmpHtml.components && AmpHtml.components.include?('notifications')) || component == 'notifications' }#{ ' --anim' if (AmpHtml.components && AmpHtml.components.include?('anim')) || component == 'anim' }#{ ' --ad' if (AmpHtml.components && AmpHtml.components.include?('ad')) || component == 'ad' }#{ ' --social' if (AmpHtml.components && AmpHtml.components.include?('social')) || component == 'social' }#{ ' --javascript' if (AmpHtml.components && AmpHtml.components.include?('javascript')) || component == 'javascript' }#{ ' --service_worker' if (AmpHtml.components && AmpHtml.components.include?('service_worker')) || component == 'service_worker' }#{ ' --lists' if (AmpHtml.components && AmpHtml.components.include?('lists')) || component == 'lists' }"
                    success3 = system "rails g amp_html:views --only_resources#{ ' --javascript' if (AmpHtml.components && AmpHtml.components.include?('javascript')) || component == 'javascript' }"
                    if success1 && success2 && success3
                        puts "Successfully installed '#{component}' component!"
                        puts IO.read File.join AmpHtml.root, 'amp-html', 'components', 'templates', 'README.md'
                    else
                        puts IO.read File.join AmpHtml.root, 'amp-html', 'components', 'templates', 'ERROR.md'
                    end
                end
            end

        end
    end
end
