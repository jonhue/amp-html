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

        # Fix for accessing AMP assets in different environments
        def get_asset name
            if Rails.application.assets
                asset = Rails.application.assets[name]
                return asset.to_s if asset
            end
            asset = Rails.application.assets_manifest.assets[name]
            return nil unless asset
            return File.binread(File.join(Rails.application.assets_manifest.dir, asset))
        end

    end
end
