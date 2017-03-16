module Amphtml
    module Components
        class Help

            def self.all
                puts IO.read("lib/amphtml/components/templates/README")
            end

            def self.component(name)
                puts IO.read("lib/amphtml/components/templates/README")
            end

        end
    end
end
