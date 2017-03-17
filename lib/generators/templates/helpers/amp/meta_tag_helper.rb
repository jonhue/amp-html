module ApplicationHelper

    def meta_tag(options: {})
        options = options.symbolize_keys

        render "meta", options: options
    end

end
