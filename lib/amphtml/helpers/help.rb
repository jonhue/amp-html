module Amphtml
    module Helpers
        class Help

            def self.all
                puts IO.read("lib/amphtml/helpers/docs/README.md")
            end

            def self.helper(name)
                puts IO.read("lib/amphtml/components/docs/#{name}.md") || "Helper is not available"
            end

        end
    end
end
