module ApplicationHelper
    module Amp::AmpTagHelper

        def amp_html_doctype(&block)
            tag("!doctype", html: "")
            if block_given?
                content_tag("html", capture(&block), ⚡: "")
            else
                content_tag("html", nil, ⚡: "")
            end
        end


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
            options = options.symbolize_keys
            options[:placeholder] = true
            content_tag(name, options)
        end

        def amp_fallback(name, options: {})
            options = options.symbolize_keys
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


        def amp_head(options: {})
            options = options.symbolize_keys

            render "application/amp/head", options: options
        end


        def amp_resources
            render "application/amp/resources"
            render "application/amp/components"
        end

    end
end
