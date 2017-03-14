module ApplicationHelper

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

end
