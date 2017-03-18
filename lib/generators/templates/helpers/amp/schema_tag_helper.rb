module ApplicationHelper
    module Amp::SchemaTagHelper

        def schema_tag(options: {})
            options = options.symbolize_keys

            options[:@context] = "http://schema.org"
            options[:@type] = Amphtml.application.type if Amphtml.application.type && options[:@type] == nil
            options[:headline] = Amphtml.application.name if Amphtml.application.name && options[:headline] == nil
            options[:datePublished] = Amphtml.application.date_published if Amphtml.application.date_published && options[:datePublished] == nil
            options[:image] = Amphtml.application.image if Amphtml.application.image && options[:image] == nil

            types = {}
            types[:type] = "application/ld+json"
            content_tag("script", options, types)
        end

    end
end
