module ApplicationHelper
    module Amp::NoscriptTagHelper

        def noscript_tag(&block)
            if block_given?
                content_tag("noscript", capture(&block))
            else
                content_tag("noscript", nil)
            end
        end

    end
end
