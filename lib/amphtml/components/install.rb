module Amphtml
    module Components

        COMPONENTS = ["analytics", "iframe", "notifications", "anim", "ad", "social"]

        class Install

            def self.bundle
                success = system "rails g amphtml:components#{ ' -s' if Amphtml.split_view }#{ ' -f ' + Amphtml.raw_format if Amphtml.raw_format }#{ ' --analytics' if Amphtml.components && Amphtml.components.include?('analytics') }#{ ' --iframe' if Amphtml.components && Amphtml.components.include?('iframe') }#{' --notifications' if Amphtml.components && Amphtml.components.include?('notifications') }#{ ' --anim' if Amphtml.components && Amphtml.components.include?('anim') }#{ ' --ad' if Amphtml.components && Amphtml.components.include?('ad') }#{ ' --social' if Amphtml.components && Amphtml.components.include?('social') }"
                if success
                    puts IO.read(File.join Amphtml.root, "amphtml", "components", "templates", "README.md")
                else
                    puts IO.read(File.join Amphtml.root, "amphtml", "components", "templates", "ERROR.md")
                end
            end

            def self.install(component)
                if COMPONENTS.include?(component)
                    success1 = system "rails g amphtml:install#{ ' -s' if Amphtml.split_view }#{ ' -f ' + Amphtml.raw_format if Amphtml.raw_format }#{ ' --analytics' if (Amphtml.components && Amphtml.components.include?('analytics')) || component == 'analytics' }#{ ' --iframe' if (Amphtml.components && Amphtml.components.include?('iframe')) || component == 'iframe' }#{' --notifications' if (Amphtml.components && Amphtml.components.include?('notifications')) || component == 'notifications' }#{ ' --anim' if (Amphtml.components && Amphtml.components.include?('anim')) || component == 'anim' }#{ ' --ad' if (Amphtml.components && Amphtml.components.include?('ad')) || component == 'ad' }#{ ' --social' if (Amphtml.components && Amphtml.components.include?('social')) || component == 'social' }"
                    success2 = system "rails g amphtml:components#{ ' -s' if Amphtml.split_view }#{ ' -f ' + Amphtml.raw_format if Amphtml.raw_format }#{ ' --analytics' if (Amphtml.components && Amphtml.components.include?('analytics')) || component == 'analytics' }#{ ' --iframe' if (Amphtml.components && Amphtml.components.include?('iframe')) || component == 'iframe' }#{' --notifications' if (Amphtml.components && Amphtml.components.include?('notifications')) || component == 'notifications' }#{ ' --anim' if (Amphtml.components && Amphtml.components.include?('anim')) || component == 'anim' }#{ ' --ad' if (Amphtml.components && Amphtml.components.include?('ad')) || component == 'ad' }#{ ' --social' if (Amphtml.components && Amphtml.components.include?('social')) || component == 'social' }"
                    if success1 && success2
                        puts IO.read(File.join Amphtml.root, "amphtml", "components", "templates", "README.md")
                    else
                        puts IO.read(File.join Amphtml.root, "amphtml", "components", "templates", "ERROR.md")
                    end
                    puts "Successfully installed '#{component}' component!"
                end
            end

        end
    end
end
