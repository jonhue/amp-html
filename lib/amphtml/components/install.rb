module Amphtml
    module Components

        COMPONENTS = ["analytics", "iframe", "notifications", "anim", "ad", "social", "javascript", "service_worker", "lists"]

        class Install

            def self.bundle
                success1 = system "rails g amphtml:components#{ ' -s' if Amphtml.split_view }#{ ' -f ' + Amphtml.raw_format if Amphtml.raw_format }#{ ' --analytics' if Amphtml.components && Amphtml.components.include?('analytics') || Amphtml.components && Amphtml.components.include?('notifications') }#{ ' --iframe' if Amphtml.components && Amphtml.components.include?('iframe') || Amphtml.components && Amphtml.components.include?('javascript') || Amphtml.components && Amphtml.components.include?('service_worker') }#{' --notifications' if Amphtml.components && Amphtml.components.include?('notifications') }#{ ' --anim' if Amphtml.components && Amphtml.components.include?('anim') }#{ ' --ad' if Amphtml.components && Amphtml.components.include?('ad') }#{ ' --social' if Amphtml.components && Amphtml.components.include?('social') }#{ ' --javascript' if (Amphtml.components && Amphtml.components.include?('javascript')) }#{ ' --service_worker' if (Amphtml.components && Amphtml.components.include?('service_worker')) }#{ ' --lists' if (Amphtml.components && Amphtml.components.include?('lists')) }"
                success2 = system "rails g amphtml:install --only_initializer#{ ' --javascript' if (Amphtml.components && Amphtml.components.include?('javascript')) }"
                if success1 && success2
                    puts IO.read(File.join Amphtml.root, "amphtml", "components", "templates", "README.md")
                else
                    puts IO.read(File.join Amphtml.root, "amphtml", "components", "templates", "ERROR.md")
                end
            end

            def self.install(component)
                if COMPONENTS.include?(component)
                    success1 = system "rails g amphtml:install#{ ' -s' if Amphtml.split_view }#{ ' -f ' + Amphtml.raw_format if Amphtml.raw_format }#{ ' --analytics' if (Amphtml.components && Amphtml.components.include?('analytics')) || Amphtml.components && Amphtml.components.include?('notifications') || component == 'analytics' || component == 'notifications' }#{ ' --iframe' if (Amphtml.components && Amphtml.components.include?('iframe')) || Amphtml.components && Amphtml.components.include?('javascript') || Amphtml.components && Amphtml.components.include?('service_worker') || component == 'iframe' || component == 'javascript' || component == 'service_worker' }#{' --notifications' if (Amphtml.components && Amphtml.components.include?('notifications')) || component == 'notifications' }#{ ' --anim' if (Amphtml.components && Amphtml.components.include?('anim')) || component == 'anim' }#{ ' --ad' if (Amphtml.components && Amphtml.components.include?('ad')) || component == 'ad' }#{ ' --social' if (Amphtml.components && Amphtml.components.include?('social')) || component == 'social' }#{ ' --javascript' if (Amphtml.components && Amphtml.components.include?('javascript')) || component == 'javascript' }#{ ' --service_worker' if (Amphtml.components && Amphtml.components.include?('service_worker')) || component == 'service_worker' }#{ ' --lists' if (Amphtml.components && Amphtml.components.include?('lists')) || component == 'lists' }"
                    success2 = system "rails g amphtml:components#{ ' -s' if Amphtml.split_view }#{ ' -f ' + Amphtml.raw_format if Amphtml.raw_format }#{ ' --analytics' if (Amphtml.components && Amphtml.components.include?('analytics')) || Amphtml.components && Amphtml.components.include?('notifications') || component == 'analytics' || component == 'notifications' }#{ ' --iframe' if (Amphtml.components && Amphtml.components.include?('iframe')) || Amphtml.components && Amphtml.components.include?('javascript') || Amphtml.components && Amphtml.components.include?('service_worker') || component == 'iframe' || component == 'javascript' || component == 'service_worker' }#{' --notifications' if (Amphtml.components && Amphtml.components.include?('notifications')) || component == 'notifications' }#{ ' --anim' if (Amphtml.components && Amphtml.components.include?('anim')) || component == 'anim' }#{ ' --ad' if (Amphtml.components && Amphtml.components.include?('ad')) || component == 'ad' }#{ ' --social' if (Amphtml.components && Amphtml.components.include?('social')) || component == 'social' }#{ ' --javascript' if (Amphtml.components && Amphtml.components.include?('javascript')) || component == 'javascript' }#{ ' --service_worker' if (Amphtml.components && Amphtml.components.include?('service_worker')) || component == 'service_worker' }#{ ' --lists' if (Amphtml.components && Amphtml.components.include?('lists')) || component == 'lists' }"
                    success3 = system "rails g amphtml:views --only_resources#{ ' --javascript' if (Amphtml.components && Amphtml.components.include?('javascript')) || component == 'javascript' }"
                    if success1 && success2 && success3
                        puts "Successfully installed '#{component}' component!"
                        puts IO.read(File.join Amphtml.root, "amphtml", "components", "templates", "README.md")
                    else
                        puts IO.read(File.join Amphtml.root, "amphtml", "components", "templates", "ERROR.md")
                    end
                end
            end

        end
    end
end
