module ApplicationHelper
    module Amp::Components::AnimTagHelper

        def amp_anim(source, options: {})
            options = options.symbolize_keys

            src = options[:src] = path_to_image(source, skip_pipeline: options.delete(:skip_pipeline))

            options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
            warn "WARNING (AMP): specify width and height of amp-anim tags." unless options[:width] && options[:height]

            options[:layout] = "responsive" unless options[:layout] != "responsive"

            if options[:placeholder]
                options.delete(:placeholder)
                content_tag("amp-anim", options) do
                    options.delete(:src)
                    amp_placeholder("amp-img", options)
                end
            else
                content_tag("amp-anim", options)
            end
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
