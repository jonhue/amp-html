module Amphtml
    module Configuration
        class Help

            def self.all
                puts IO.read(File.join Amphtml.root, "amphtml", "configuration", "docs", "README.md")
            end

        end
    end
end
