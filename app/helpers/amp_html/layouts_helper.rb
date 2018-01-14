module AmpHtml
    module LayoutsHelper

        def amp_mozaic &block
            mozaic ( amp? ? :amp : :mozaic ) do
                capture(&block)
            end
        end

    end
end
