module Amphtml
    module Components
        class Install

            def self.bundle
                generate "amphtml:components #{'-f' if Amphtml.format} #{'--analytics' if Amphtml.components.include?('analytics')} #{'--iframe' if Amphtml.components.include?('iframe')} #{'--notifications' if Amphtml.components.include?('notifications')} #{'--anim' if Amphtml.components.include?('anim')} #{'--ad' if Amphtml.components.include?('ad')} #{'--social' if Amphtml.components.include?('social')}"
            end

        end
    end
end
