module Amphtml
    class Test
        class Help

            def self.all
                puts IO.read(File.join Amphtml.root, "amphtml", "test", "templates", "README.md")
            end

        end
    end
end
