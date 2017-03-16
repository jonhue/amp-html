module Amphtml
    module Components
        class Install

            def self.bundle
                generate "amphtml:components #{ '-f' if AMP_HTML[:format] } #{ '--analytics' if AMP_HTML[:components].include?('analytics') } #{ '--iframe' if AMP_HTML[:components].include?('iframe') } #{'--notifications' if AMP_HTML[:components].include?('notifications') } #{ '--anim' if AMP_HTML[:components].include?('anim') } #{ '--ad' if AMP_HTML[:components].include?('ad') } #{ '--social' if AMP_HTML[:components].include?('social') }"
            end

        end
    end
end
