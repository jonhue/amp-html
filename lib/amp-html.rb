begin
    require 'rails'
rescue Exception
    warn 'Ensure you are in a Ruby on Rails environment'
end

module AmpHtml

    require 'amp-html/root'
    require 'amp-html/version'

    require 'amp-html/cli'

    require 'amp-html/configuration'
    require 'amp-html/configuration/help'

    require 'amp-html/test'
    require 'amp-html/validate'

    require 'amp-html/components/install'

    require 'amp-html/helpers/help'
    require 'amp-html/components/help'
    require 'amp-html/test/help'
    require 'amp-html/validate/help'

end
