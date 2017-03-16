module Amphtml
    class Validate
        class Help

            def self.all
                puts IO.read("lib/amphtml/validate/templates/README")
            end

        end
    end
end
