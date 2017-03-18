module ApplicationHelper
    module Amp::Components::IframeTagHelper

        def amp_iframe(source, options: {})
            options = options.symbolize_keys

            options[:src] = source
            options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
            warn "WARNING (AMP): specify width and height of amp-iframe tags." unless options[:width] && options[:height]

            options[:layout] = "responsive" unless options[:layout] != "responsive"
            content_tag("amp-iframe", options)
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
