module ApplicationHelper

    def amp_css
        content_for :css
    end
    def amp_global_css
        content_for :global_css
    end

    def amp_js
        content_for :js
    end
    def amp_global_js
        content_for :global_js
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
        tag("link", options)
    end

    def canonical_link(href)
        options = {}
        options[:href] = href
        options[:rel] = "canonical"
        tag("link", options)
    end

end
