module Amphtml
    module Components
        class Install

            def self.bundle
                success = system "rails g amphtml:components#{ ' -s' if Amphtml.split_view }#{ ' -f ' + Amphtml.raw_format if Amphtml.raw_format }#{ ' --analytics' if Amphtml.components && Amphtml.components.include?('analytics') }#{ ' --iframe' if Amphtml.components && Amphtml.components.include?('iframe') }#{' --notifications' if Amphtml.components && Amphtml.components.include?('notifications') }#{ ' --anim' if Amphtml.components && Amphtml.components.include?('anim') }#{ ' --ad' if Amphtml.components && Amphtml.components.include?('ad') }#{ ' --social' if Amphtml.components && Amphtml.components.include?('social') }"
                if success
                    puts IO.read("templates/README.md")
                else
                    puts IO.read("templates/ERROR.md")
                end
            end

        end
    end
end
