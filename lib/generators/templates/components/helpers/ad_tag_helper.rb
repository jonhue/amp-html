module ApplicationHelper

    def amp_ad(network: Amphtml.ad_default_network, options: {})
        options = options.symbolize_keys

        options[:type] = network
        options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
        warn "WARNING (AMP): specify width and height of amp-ad tags." unless options[:width] && options[:height]

        options[:layout] = "responsive" unless options[:layout] != "responsive"
        content_tag("amp-ad", options)

        if options[:sticky] == true
            options.delete(:sticky)
            sticky[:layout] = "nodisplay"
            content_tag("amp-sticky-ad", sticky) do
                content_tag("amp-ad", options)
            end
        elsif options[:"placeholder-src"]
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

    def amp_embed(network: Amphtml.ad_default_network, options: {})
        amp_ad(network, options)
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
