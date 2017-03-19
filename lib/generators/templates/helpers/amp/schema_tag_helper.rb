module ApplicationHelper
    module Amp::SchemaTagHelper

        def schema_tag(options = {})
            options = options.symbolize_keys

            options[:@type] = Amphtml.application_type if Amphtml.application_type && options[:@type] == nil
            options[:headline] = Amphtml.application_name if Amphtml.application_name && options[:headline] == nil
            options[:datePublished] = Amphtml.application_date_published if Amphtml.application_date_published && options[:datePublished] == nil
            options[:image] = Amphtml.application_image if Amphtml.application_image && options[:image] == nil

            render "application/amp/schema", options: options
        end

    end
end
