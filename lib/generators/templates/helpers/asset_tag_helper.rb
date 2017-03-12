module ActionView::Helpers::AssetTagHelper

    def image_tag(source, options = {})
        options = options.symbolize_keys
        check_for_image_tag_errors(options)

        src = options[:src] = path_to_image(source, skip_pipeline: options.delete(:skip_pipeline))

        unless src.start_with?("cid:") || src.start_with?("data:") || src.blank?
            options[:alt] = options.fetch(:alt) { image_alt(src) }
        end

        options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
        tag("amp-img", options)
    end

    def ad_tag(options = {})
        options = options.symbolize_keys
        check_for_ad_tag_errors(options)

        options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
        tag("amp-ad", options)
    end

    def video_tag(source, options = {})
        options = options.symbolize_keys
        check_for_video_tag_errors(options)

        src = options[:src] = path_to_image(source, skip_pipeline: options.delete(:skip_pipeline))

        unless src.start_with?("cid:") || src.start_with?("data:") || src.blank?
            options[:alt] = options.fetch(:alt) { image_alt(src) }
        end

        options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
        tag("amp-video", options)
    end

    def iframe_tag(source, options = {})
        options = options.symbolize_keys
        check_for_iframe_tag_errors(options)

        src = options[:src] = path_to_image(source, skip_pipeline: options.delete(:skip_pipeline))

        unless src.start_with?("cid:") || src.start_with?("data:") || src.blank?
            options[:alt] = options.fetch(:alt) { image_alt(src) }
        end

        options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
        tag("amp-iframe", options)
    end

    def audio_tag(source, options = {})
        options = options.symbolize_keys
        check_for_audio_tag_errors(options)

        src = options[:src] = path_to_image(source, skip_pipeline: options.delete(:skip_pipeline))

        unless src.start_with?("cid:") || src.start_with?("data:") || src.blank?
            options[:alt] = options.fetch(:alt) { image_alt(src) }
        end

        tag("amp-audio", options)
    end

end
