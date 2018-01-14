module ApplicationHelper
    module Amp::SchemaTagHelper

        def schema_tag(options = {})
            options = options.symbolize_keys

            options[:@type] = AmpHtml.application_type if AmpHtml.application_type && options[:@type] == nil
            options[:headline] = AmpHtml.application_name if AmpHtml.application_name && options[:headline] == nil
            options[:datePublished] = AmpHtml.application_date_published if AmpHtml.application_date_published && options[:datePublished] == nil
            options[:image] = AmpHtml.application_image if AmpHtml.application_image && options[:image] == nil

            render 'application/amp/schema', options: options
        end

    end
end
