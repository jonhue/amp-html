module Amphtml
    module Helpers
        class Help

            def self.all
                puts IO.read(File.join Amphtml.root, "amphtml", "helpers", "docs", "README.md")
            end

            def self.helper(name)
                begin
                    unless name = "amp?"
                        puts IO.read(File.join Amphtml.root, "amphtml", "helpers", "docs", "#{name}.md")
                    elsif name = "amp?"
                        puts IO.read(File.join Amphtml.root, "amphtml", "helpers", "docs", "amp.md")
                    end
                rescue Exception => e
                    warn "Helper is not available"
                end
            end

        end
    end
end
