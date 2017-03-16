module Amphtml
    module Components
        class Help

            def self.all
                puts IO.read("lib/amphtml/components/docs/README.md")
            end

            def self.component(name)
                puts IO.read("lib/amphtml/components/docs/#{name}.md") || "Component is not available"
            end

        end
    end
end
