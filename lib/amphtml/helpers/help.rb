module Amphtml
    module Helpers
        class Help

            def self.all
                puts IO.read("lib/amphtml/helpers/docs/README.md")
            end

            def self.helper(name)
                begin
                    puts IO.read("lib/amphtml/components/docs/#{name}.md")
                rescue Exception => e
                    warn "Helper is not available"
                end
            end

        end
    end
end
