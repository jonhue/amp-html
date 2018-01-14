module ApplicationHelper
    module Amp::FallbackTagHelper

        def amp_fallback(name, options = {}, &block)
            options = options.symbolize_keys
            options.merge(fallback: "")

            if block_given?
                content_tag(name, capture(&block), options)
            else
                content_tag(name, nil, options)
            end
        end

    end
end
