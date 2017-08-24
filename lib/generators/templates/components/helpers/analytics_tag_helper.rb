module ApplicationHelper
    module Amp::Components::AnalyticsTagHelper

        def amp_analytics vendor = AmpHtml.analytics_default_vendor, options = {}, &block
            options = options.symbolize_keys
            options[:type] = vendor if vendor
            if block_given?
                content_tag 'amp-analytics', capture(&block), options
            else
                content_tag 'amp-analytics', nil, options
            end
        end
        def amp_google_analytics options = {}
            options = options.symbolize_keys

            options[:type] = 'googleanalytics'
            triggers = options[:triggers]
            content_tag('amp-analytics', options) do
                render 'application/amp/components/google_analytics', triggers: triggers
            end
        end

        def amp_pixel src
            options = {}
            options[:src] = src
            content_tag 'amp-pixel', options
        end

    end
end
