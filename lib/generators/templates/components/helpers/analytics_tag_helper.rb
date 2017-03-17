module ApplicationHelper

    def amp_analytics(vendor: Amphtml.analytics_default_vendor)
        options = {}
        options[:type] = vendor
        content_tag("amp-analytics", options)
    end
    def amp_google_analytics(options: {})
        options = options.symbolize_keys

        options[:type] = "googleanalytics"
        triggers = options[:triggers]
        content_tag("amp-analytics", options) do
            render "application/amp/components/google_analytics", triggers: triggers
        end
    end

    def amp_pixel(src)
        options = {}
        options[:src] = src
        content_tag("amp-pixel", options)
    end

end
