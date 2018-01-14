module AmpHtml
    module BaseHelper

        def amp?
            if AmpHtml.configuration.split_view
                return params[:amp] if params.has_key?(:amp)
                AmpHtml.configuration.split_view_default == 'amp'
            else
                true
            end
        end

    end
end
