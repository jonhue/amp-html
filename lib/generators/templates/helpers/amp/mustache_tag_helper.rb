module ApplicationHelper
    module Amp::MustacheTagHelper

        def amp_mustache(options = {}, &block)
            options = options.symbolize_keys

            options[:type] = "amp-mustache"

            content_tag("template", capture(&block), options)
        end

    end
end
