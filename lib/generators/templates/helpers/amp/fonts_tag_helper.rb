module ApplicationHelper

    def amp_font(href)

        options = {}

        options[:href] = href
        options[:rel] = "stylesheet"
        warn "WARNING (AMP): For serving fonts via the link tag, origins must be whitelisted - use `@font-face` instead. Learn more: https://github.com/ampproject/amphtml/blob/master/spec/amp-html-format.md#custom-fonts" unless href.include?("fonts.googleapis.com") || href.include?("fast.fonts.net") || href.include?("cloud.typography.com") || href.include?("maxcdn.bootstrapcdn.com")

        content_tag("link", options)
    end

    def amp_google_font(family, types: {})
        options = {}

        href = "https://fonts.googleapis.com/css?family=" + family.gsub " ", "+"
        href = href + ":" + types.join(",") if types.size > 0

        options[:href] = href
        options[:rel] = "stylesheet"

        content_tag("link", options)
    end

end
