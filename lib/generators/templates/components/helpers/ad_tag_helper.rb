module ApplicationHelper
    module Amp::Components::AdTagHelper

        def amp_ad(network = Amphtml.ad_default_network, options = {}, &block)
            options = options.symbolize_keys

            options[:type] = network
            options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
            warn "WARNING (AMP): specify width and height of amp-ad tags." unless options[:width] && options[:height]

            options[:layout] = "responsive" unless options[:layout] != "responsive"
            content_tag("amp-ad", options)

            if block_given?
                content_tag("amp-ad", capture(&block), options)
            else
                if options[:sticky] == true
                    options.delete(:sticky)
                    sticky = {}
                    sticky[:layout] = "nodisplay"
                    content_tag("amp-sticky-ad", sticky) do
                        content_tag("amp-ad", options)
                    end
                elsif options[:placeholder]
                    placeholder = options[:placeholder]
                    options.delete(:placeholder)
                    content_tag("amp-ad", options) do
                        placeholder = options[:src] = path_to_image(source, skip_pipeline: options.delete(:skip_pipeline))
                        amp_placeholder("amp-img", options)
                    end
                elsif options[:fallback]
                    fallback = options[:fallback]
                    options.delete(:fallback)
                    content_tag("amp-ad", options) do
                        fallback = options[:src] = path_to_image(source, skip_pipeline: options.delete(:skip_pipeline))
                        amp_fallback("amp-img", options)
                    end
                else
                    content_tag("amp-ad", nil, options)
                end
            end
        end

        def amp_embed(network = Amphtml.ad_default_network, options = {}, &block)
            amp_ad(network, options, capture(&block))
        end

        def amp_auto_ads(network = Amphtml.auto_ads_default_network, options = {})
            options = options.symbolize_keys

            options[:type] = network
            content_tag("amp-auto-ads", options)
        end

        # ## Removed because it depends on Iframe Component
        # ## Propably moving into Iframe Component
        # def amp_video_ad(source, poster, options = {})
        #     options = options.symbolize_keys
        #
        #     options[:poster] = poster
        #     amp_iframe(source, options)
        # end

        def amp_custom_ad(name)
            options = {}
            options[:name] = name
            options[:content] = request.original_url + "/remote.html"
            tag("meta", options, open: true)
            # render html: '<meta name="#{name}" content="#{request.original_url}/remote.html">'.html_safe
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
end
