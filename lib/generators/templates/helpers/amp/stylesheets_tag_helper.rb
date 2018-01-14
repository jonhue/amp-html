module ApplicationHelper
    module Amp::StylesheetsTagHelper

        def amp_css &block
            if block_given?
                content_for :css, capture(&block)
            end
        end

        # def amp_css_link(href)
        # end

        def amp_global_css &block
            warn 'AMP-HTML WARNING: `amp_global_css` is deprecated and will be removed in amp-html 2.0 - use `amp_css` instead'
            if block_given?
                content_for :global_css, capture(&block)
            end
        end

    end
end
