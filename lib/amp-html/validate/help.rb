module AmpHtml
    class Validate
        class Help

            def self.all
                puts IO.read File.join AmpHtml.root, 'amp-html', 'validate', 'templates', 'README.md'
            end

        end
    end
end
