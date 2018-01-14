module AmpHtml
    module AssetHelper

        def amp_css &block
            if block_given?
                append :css, capture(&block)
            end
        end

    end
end
