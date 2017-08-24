module AmpHtml
    class Test
        class Help

            def self.all
                puts IO.read File.join AmpHtml.root, 'amp-html', 'test', 'templates', 'README.md'
            end

        end
    end
end
