module ApplicationHelper
    module Amp::Components::JavascriptTagHelper

        def amp_js(source = asset_url("amp/application.js"))
            options = {}
            options[:src] = src
            options[:sandbox] = "allow-scripts allow-same-origin"
            content_tag("amp-iframe", options)
        end

    end
end
