module Amphtml
    module Helpers
        class Help

            def self.all
                puts IO.read("lib/amphtml/helpers/templates/README")
            end

            def self.helper(name)
                puts IO.read("lib/amphtml/helpers/templates/README")
            end

        end
    end
end
