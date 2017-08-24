module AmpHtml
    module Components
        class Help

            def self.all
                puts IO.read File.join AmpHtml.root, 'amp-html', 'components', 'docs', 'README.md'
            end

            def self.component name
                begin
                    puts IO.read File.join AmpHtml.root, 'amp-html', 'components', 'docs', "#{name}.md"
                rescue Exception
                    warn 'Component is not available'
                end
            end

        end
    end
end
