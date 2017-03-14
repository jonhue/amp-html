module ApplicationHelper

    # -> List of supported ad networks https://www.ampproject.org/docs/reference/components/ads/amp-ad#supported-ad-networks
    def amp_ad(network, options: {})
        options = options.symbolize_keys

        options[:type] = network
        options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
        warn "WARNING (AMP): specify width and height of amp-ad tags." unless options[:width] && options[:height]

        options[:layout] = "responsive" unless options[:layout] != "responsive"
        content_tag("amp-ad", options)

        if options[:"placeholder-src"]
            placeholder_src = options[:"placeholder-src"]
            options.delete(:"placeholder-src")
            content_tag("amp-ad", options) do
                options[:src] = placeholder_src
                amp_placeholder("amp-img", options)
            end
        elsif options[:"fallback-src"]
            fallback_src = options[:"fallback-src"]
            options.delete(:"fallback-src")
            content_tag("amp-ad", options) do
                options[:src] = fallback_src
                amp_placeholder("amp-img", options)
            end
        else
            content_tag("amp-ad", options)
        end
    end

    def amp_iframe(source, options: {})
        options = options.symbolize_keys

        options[:src] = source
        options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
        warn "WARNING (AMP): specify width and height of amp-iframe tags." unless options[:width] && options[:height]

        options[:layout] = "responsive" unless options[:layout] != "responsive"
        content_tag("amp-iframe", options)
    end

    def amp_analytics(vendor)
        options[:type] = vendor
        content_tag("amp-analytics", options)
    end

    def noscript_tag
        content_tag("noscript")
    end

    private

    def extract_dimensions(size)
        size = size.to_s
        if /\A\d+x\d+\z/.match?(size)
            size.split("x")
        elsif /\A\d+\z/.match?(size)
            [size, size]
        end
    end

end
