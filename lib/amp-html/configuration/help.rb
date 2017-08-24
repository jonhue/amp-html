module AmpHtml
    module Configuration
        class Help

            def self.all
                puts IO.read File.join AmpHtml.root, 'amp-html', 'configuration', 'docs', 'README.md'
            end

        end
    end
end
