module ApplicationHelper
    module Amp::PlaceholderTagHelper

        def amp_placeholder(name, options = {}, &block)
            options = options.symbolize_keys
            options[:placeholder] = ""

            if block_given?
                content_tag(name, capture(&block), options)
            else
                content_tag(name, nil, options)
            end
        end

    end
end
