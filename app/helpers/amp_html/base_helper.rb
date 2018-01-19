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

        def amp_packaged_css
            global = Rails.application.assets.find_asset('amp/application.css').to_s
            package = Rails.application.assets.find_asset("amp/packages/#{params[:controller]}/#{action_name}.css").to_s
            # if Rails.env.development?
            #     ::Sass::Engine.new(global + package, {
            #         syntax: :scss,
            #         cache: false,
            #         read_cache: false,
            #         style: :compressed
            #     }).render
            # else
            #     global + package
            # end
            global + package
        end

        def amp= value = true
            params[:amp] = value
        end

        def amp_path scope = 'amp'
            params[:amp] = true if request.fullpath.include?("/#{scope}")
        end

    end
end
