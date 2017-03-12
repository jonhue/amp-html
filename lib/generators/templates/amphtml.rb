require 'amphtml'

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

end
