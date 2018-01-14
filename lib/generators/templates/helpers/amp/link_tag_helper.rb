module ApplicationHelper
    module Amp::LinkTagHelper

        def amp_link(href, options = {})
            options = options.symbolize_keys
            options[:href] = href
            tag("link", options)
        end

    end
end
