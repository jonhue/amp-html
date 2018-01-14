module ApplicationHelper
    module Amp::Components::SocialTagHelper

        def amp_twitter tweet_id, options = {}, &block
            options = options.symbolize_keys

            options[:"data-tweetid"] = tweet_id
            options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
            warn 'WARNING (AMP): specify width and height of amp-twitter tags.' unless options[:width] && options[:height]

            options[:layout] = 'responsive' unless options[:layout] != 'responsive'

            if block_given?
                content_tag 'amp-twitter', capture(&block), options
            else
                content_tag 'amp-twitter', nil, options
            end
        end

        def amp_instagram shortcode, options = {}, &block
            options = options.symbolize_keys

            options[:"data-shortcode"] = shortcode
            options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
            warn 'WARNING (AMP): specify width and height of amp-instagram tags.' unless options[:width] && options[:height]

            options[:layout] = 'responsive' unless options[:layout] != 'responsive'

            if block_given?
                content_tag 'amp-instagram', capture(&block), options
            else
                content_tag 'amp-instagram', nil, options
            end
        end

        def amp_facebook href, options = {}, &block
            options = options.symbolize_keys

            options[:"data-href"] = href

            if options[:type]
                options[:"data-embed-as"] = options[:type]
                options.delete :type
            end

            options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
            warn 'WARNING (AMP): specify width and height of amp-facebook tags.' unless options[:width] && options[:height]

            if options[:video]
                options[:"data-embed-as"] = 'video'
                options.delete :video
            end

            options[:layout] = 'responsive' unless options[:layout] != 'responsive'

            if block_given?
                content_tag 'amp-facebook', capture(&block), options
            else
                content_tag 'amp-facebook', nil, options
            end
        end

        def amp_youtube video_id, options = {}, &block
            options = options.symbolize_keys

            options[:"data-videoid"] = video_id
            options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
            warn 'WARNING (AMP): specify width and height of amp-youtube tags.' unless options[:width] && options[:height]

            options[:layout] = 'responsive' unless options[:layout] != 'responsive'

            if block_given?
                content_tag 'amp-youtube', capture(&block), options
            else
                content_tag 'amp-youtube', nil, options
            end
        end

        def amp_reddit src, type, options = {}, &block
            options = options.symbolize_keys

            options[:"data-embedtype"] = type
            options[:"data-src"] = src
            options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
            warn 'WARNING (AMP): specify width and height of amp-reddit tags.' unless options[:width] && options[:height]

            options[:layout] = 'responsive' unless options[:layout] != 'responsive'

            if block_given?
                content_tag 'amp-reddit', capture(&block), options
            else
                content_tag 'amp-reddit', nil, options
            end
        end

        def amp_social_share type = AmpHtml.social_share_default_provider, options = {}, &block
            options = options.symbolize_keys

            options[:type] = type if type
            options[:"data-share-endpoint"] = AmpHtml.default_data_share_endpoint if AmpHtml.default_data_share_endpoint
            options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
            warn 'WARNING (AMP): specify width and height of amp-social-share tags.' unless options[:width] && options[:height]

            options[:layout] = 'responsive' unless options[:layout] != 'responsive'

            if block_given?
                content_tag 'amp-social-share', capture(&block), options
            else
                content_tag 'amp-social-share', nil, options
            end
        end

        def amp_soundcloud track_id, options = {}, &block
            options = options.symbolize_keys

            options[:"data-trackid"] = track_id

            if options[:type].downcase == 'visual'
                options[:"data-visual"] = true
            end
            options.delete :type

            options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
            warn 'WARNING (AMP): specify width and height of amp-soundcloud tags.' unless options[:width] && options[:height]

            options[:layout] = 'responsive' unless options[:layout] != 'responsive'

            if block_given?
                content_tag 'amp-soundcloud', capture(&block), options
            else
                content_tag 'amp-soundcloud', nil, options
            end
        end

        def amp_vine vine_id, options = {}, &block
            options = options.symbolize_keys

            options[:"data-vineid"] = vine_id

            options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
            warn 'WARNING (AMP): specify width and height of amp-vine tags.' unless options[:width] && options[:height]

            options[:layout] = 'responsive' unless options[:layout] != 'responsive'

            if block_given?
                content_tag 'amp-vine', capture(&block), options
            else
                content_tag 'amp-vine', nil, options
            end
        end

        def amp_gfycat gfy_id, autoplay, options = {}, &block
            options = options.symbolize_keys

            options[:"data-gfyid"] = gfy_id
            options[:noautoplay] = true if autoplay == false

            options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
            warn 'WARNING (AMP): specify width and height of amp-gfycat tags.' unless options[:width] && options[:height]

            options[:layout] = 'responsive' unless options[:layout] != 'responsive'

            if block_given?
                content_tag 'amp-gfycat', capture(&block), options
            else
                content_tag 'amp-gfycat', nil, options
            end
        end

        def amp_pin_it url, media, description, options = {}, &block
            options = options.symbolize_keys

            options[:"data-do"] = 'buttonPin'
            options[:"data-url"] = url
            options[:"data-media"] = media
            options[:"data-description"] = description

            options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
            warn 'WARNING (AMP): specify width and height of amp-pinterest tags.' unless options[:width] && options[:height]

            options[:layout] = 'responsive' unless options[:layout] != 'responsive'

            if block_given?
                content_tag 'amp-pinterest', capture(&block), options
            else
                content_tag 'amp-pinterest', nil, options
            end
        end

        def amp_pin_widget url, options = {}, &block
            options = options.symbolize_keys

            options[:"data-do"] = 'embedPin'
            options[:"data-url"] = url

            options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
            warn 'WARNING (AMP): specify width and height of amp-pinterest tags.' unless options[:width] && options[:height]

            options[:layout] = 'responsive' unless options[:layout] != 'responsive'

            if block_given?
                content_tag 'amp-pinterest', capture(&block), options
            else
                content_tag 'amp-pinterest', nil, options
            end
        end

        def amp_pinterest_follow label, href, options = {}, &block
            options = options.symbolize_keys

            options[:"data-do"] = 'buttonFollow'
            options[:"data-label"] = label
            options[:"data-href"] = href

            options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
            warn 'WARNING (AMP): specify width and height of amp-pinterest tags.' unless options[:width] && options[:height]

            options[:layout] = 'responsive' unless options[:layout] != 'responsive'

            if block_given?
                content_tag 'amp-pinterest', capture(&block), options
            else
                content_tag 'amp-pinterest', nil, options
            end
        end

    end
end
