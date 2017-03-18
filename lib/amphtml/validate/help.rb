module Amphtml
    class Validate
        class Help

            def self.all
                puts IO.read(File.join Amphtml.root, "amphtml", "validate", "templates", "README.md")
            end

        end
    end
end
