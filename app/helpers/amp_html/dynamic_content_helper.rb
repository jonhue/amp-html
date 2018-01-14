module AmpHtml
    module DynamicContentHelper

        def form_tag url_for_options = {}, options = {}, &block
            if amp?
                options[:action] = url_for_options
                component 'amp/form', options
            else
                super
            end
        end

    end
end
