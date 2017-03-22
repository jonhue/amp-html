module ApplicationHelper
    module Amp::Components::ListsTagHelper

        def amp_list(source, options = {}, &block)
            options = options.symbolize_keys

            options[:src] = source
            options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]
            warn "WARNING (AMP): specify width and height of amp-list tags." unless options[:width] && options[:height]

            options[:layout] = "responsive" unless options[:layout] != "responsive"
            if block_given?
                content_tag("amp-list", capture(&block), options)
            else
                content_tag("amp-list", options)
            end
        end

        def amp_live_list(id, max_items_per_page = "20", interval = "15000", options = {}, &block)
            options = options.symbolize_keys

            options[:id] = id
            options[:"data-poll-interval"] = interval
            options[:"data-max-items-per-page"] = max_items_per_page

            if block_given?
                content_tag("amp-live-list", capture(&block), options)
            else
                content_tag("amp-live-list", options)
            end
        end

        def amp_live_list_update(name = "div", list_id = nil, options = {}, &block)
            options = options.symbolize_keys

            options[:update] = ""

            options[:on] = "tap:" + list_id + ".update" if list_id
            if block_given?
                content_tag(name, capture(&block), options)
            else
                content_tag(name, options)
            end
        end

        def amp_live_list_items(options = {}, &block)
            options = options.symbolize_keys

            options[:items] = ""

            if block_given?
                content_tag("div", capture(&block), options)
            else
                content_tag("div", options)
            end
        end

        def amp_live_list_pagination(options = {}, &block)
            options = options.symbolize_keys

            options[:pagination] = ""

            if block_given?
                content_tag("div", capture(&block), options)
            else
                content_tag("div", options)
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
