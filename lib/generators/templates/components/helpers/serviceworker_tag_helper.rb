module ApplicationHelper
    module Amp::Components::ServiceworkerTagHelper

        def amp_serviceworker(register_url, install_url, options = {})
            options = options.symbolize_keys

            options[:src] = register_url
            options[:"data-iframe-src"] = install_url
            options[:layout] = "nodisplay"

            content_tag("amp-install-serviceworker", options)
        end

    end
end
