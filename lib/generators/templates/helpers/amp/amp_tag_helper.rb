module ApplicationHelper

    def amp_css
        content_for :css
    end

    def amp_placeholder(name, options: {})
        options[:placeholder] = true
        content_tag(name, options)
    end

    def amp_fallback(name, options: {})
        options[:fallback] = true
        content_tag(name, options)
    end

    def amp_link(href)
        options = {}
        options[:href] = href
        options[:rel] = "amphtml"
        content_tag("link", options)
    end

    def canonical_link(href)
        options = {}
        options[:href] = href
        options[:rel] = "canonical"
        content_tag("link", options)
    end

end
