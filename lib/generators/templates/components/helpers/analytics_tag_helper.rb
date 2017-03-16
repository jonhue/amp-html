module ApplicationHelper

    # List of supported analytics vendors -> https://www.ampproject.org/docs/reference/components/ads/amp-analytics
    def amp_analytics(vendor)
        options[:type] = vendor
        content_tag("amp-analytics", options)
    end

    def amp_pixel(src)
        options[:src] = src
        content_tag("amp-pixel", options)
    end

end
