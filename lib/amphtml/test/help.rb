module Amphtml
    class Test
        class Help

            def self.all
                puts IO.read("lib/amphtml/test/templates/README")
            end

        end
    end
end
