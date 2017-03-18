module ApplicationHelper
    module Amp::NoscriptTagHelper

        def noscript_tag
            content_tag("noscript")
        end

    end
end
