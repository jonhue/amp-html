module ApplicationHelper
    module Amp::Components::SocialTagHelper

        def amp_twitter(tweet_id, options = {})
            options = options.symbolize_keys

            options[:"data-tweetid"] = tweet_id
            options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
            warn "WARNING (AMP): specify width and height of amp-twitter tags." unless options[:width] && options[:height]

            options[:layout] = "responsive" unless options[:layout] != "responsive"
            content_tag("amp-twitter", options)
        end

        def amp_instagram(shortcode, options = {})
            options = options.symbolize_keys

            options[:"data-shortcode"] = shortcode
            options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
            warn "WARNING (AMP): specify width and height of amp-instagram tags." unless options[:width] && options[:height]

            options[:layout] = "responsive" unless options[:layout] != "responsive"
            content_tag("amp-instagram", options)
        end

        def amp_facebook(href, options = {})
            options = options.symbolize_keys

            options[:"data-href"] = href
            options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
            warn "WARNING (AMP): specify width and height of amp-facebook tags." unless options[:width] && options[:height]

            if options[:video]
                options[:"data-embed-as"] = "video"
                options.delete(:video)
            end

            options[:layout] = "responsive" unless options[:layout] != "responsive"
            content_tag("amp-facebook", options)
        end

        def amp_youtube(video_id, options = {})
            options = options.symbolize_keys

            options[:"data-videoid"] = video_id
            options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
            warn "WARNING (AMP): specify width and height of amp-youtube tags." unless options[:width] && options[:height]

            options[:layout] = "responsive" unless options[:layout] != "responsive"
            content_tag("amp-youtube", options)
        end

        def amp_reddit(src, type, options = {})
            options = options.symbolize_keys

            options[:"data-embedtype"] = type
            options[:"data-src"] = src
            options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
            warn "WARNING (AMP): specify width and height of amp-reddit tags." unless options[:width] && options[:height]

            options[:layout] = "responsive" unless options[:layout] != "responsive"
            content_tag("amp-reddit", options)
        end

        # `data-share-endpoint` if provider not preconfigured!
        def amp_social_share(type: Amphtml.social_share_default_provider, options = {})
            options = options.symbolize_keys

            options[:type] = type
            options[:"data-share-endpoint"] = Amphtml.default_data_share_endpoint if Amphtml.default_data_share_endpoint
            options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
            warn "WARNING (AMP): specify width and height of amp-social-share tags." unless options[:width] && options[:height]

            options[:layout] = "responsive" unless options[:layout] != "responsive"
            content_tag("amp-social-share", options)
        end

        def amp_soundcloud(track_id, options = {})
            options = options.symbolize_keys

            options[:"data-trackid"] = track_id

            if options[:type].downcase == "visual"
                options[:"data-visual"] = true
            end
            options.delete(:type)

            options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
            warn "WARNING (AMP): specify width and height of amp-soundcloud tags." unless options[:width] && options[:height]

            options[:layout] = "responsive" unless options[:layout] != "responsive"
            content_tag("amp-soundcloud", options)
        end

    end
end
