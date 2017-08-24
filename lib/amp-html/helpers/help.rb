module AmpHtml
    module Helpers
        class Help

            def self.all
                puts IO.read File.join AmpHtml.root, 'amp-html', 'helpers', 'docs', 'README.md'
            end

            def self.helper name
                begin
                    if name == 'amp?'
                        puts IO.read File.join AmpHtml.root, 'amp-html', 'helpers', 'docs', 'amp.md'
                    else
                        puts IO.read File.join AmpHtml.root, 'amp-html', 'helpers', 'docs', "#{name}.md"
                    end
                rescue Exception
                    warn 'Helper is not available'
                end
            end

        end
    end
end
