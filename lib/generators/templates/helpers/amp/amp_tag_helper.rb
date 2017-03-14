module ApplicationHelper

    def amp_css
        content_for :css
    end

    def amp_placeholder(name, options: {})
        options[:placeholder] = true
        content_tag(name, nil, options)
    end

    def amp_fallback(name, options: {})
        options[:fallback] = true
        content_tag(name, nil, options)
    end

end
