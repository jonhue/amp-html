module Amphtml
    module Components
        class Help

            def self.all
                puts IO.read(File.join Amphtml.root, "amphtml", "components", "docs", "README.md")
            end

            def self.component(name)
                begin
                    puts IO.read(File.join Amphtml.root, "amphtml", "components", "docs", "#{name}.md")
                rescue Exception => e
                    warn "Component is not available"
                end
            end

        end
    end
end
