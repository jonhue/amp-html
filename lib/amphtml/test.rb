module Amphtml
    class Test

        def self.all
            html
            css
        end

        def self.html
            strings = ["<base>", "<img>", "<video>", "<audio>", "<iframe>", "<frame>", "<frameset>", "<object>", "<param>", "<applet>", "<embed>", "<input type='image'>", "<input type='button'>", "<input type='password'>", "<input type='file'>", "http-equiv", "onclick", "onmouseover"]

            puts results = search_files_in_dir_for(File.join('app', 'views'), strings)
            test1 = html_test(results)

            puts "AMP-HTML TEST: HTML tests executed without exceptions" if test1
        end

        def self.css
            strings = ["@import", "!important", "-amp-", "i-amp-", "behavior", "-moz-binding", "filter", "overflow: auto", "overflow: scroll", "overflow-x: auto", "overflow-x: scroll", "overflow-y: auto", "overflow-y: scroll"]

            puts results = search_files_in_dir_for(File.join('app', 'views'), strings)
            test1 = css_test(results)

            puts results = search_files_in_dir_for(File.join('app', 'assets', 'stylesheets', 'amp'), strings)
            test2 = css_test(results)

            puts "AMP-HTML TEST: CSS tests executed without exceptions" if test1 && test2
        end

        private

        def self.search_files_in_dir_for(dir, strings)
            results = {}
            puts "Initializing test ..."
            Dir.foreach(dir) do |file|
                next if file == '.' or file == '..'
                puts 'AMP-HTML TEST: Testing dir "' + dir + "/" + file + '"'
                if File.file?(file)
                    puts 'AMP-HTML TEST: Testing "' + dir + "/" + file + '"'
                    line_number = 0
                    IO.foreach(file) do |line|
                        line_number = line_number + 1
                        if strings.any? { |string| line.include?(string) }
                            string = strings.detect { |string| line.include?(string) }
                            source = file + ":" + line_number.to_s
                            results[source] = string
                        end
                    end
                elsif File.directory?(file)
                    # Search child directories
                    search_files_in_dir_for(File.join(dir, file), strings)
                end
            end

            if results.present?
                return results
            else
                return nil
            end
        end


        def self.css_test(results)
            if results.present?
                results.each do |source, string|
                    case string
                    when "overflow: auto" || "overflow: scroll" || "overflow-x: auto" || "overflow-x: scroll" || "overflow-y: auto" || "overflow-y: scroll"
                        puts IO.read(File.join Amphtml.root, "amphtml", "test", "templates", "css", "overflow.md")
                        puts source
                    else
                        puts IO.read(File.join Amphtml.root, "amphtml", "test", "templates", "css", "#{string}.md")
                        puts source
                    end
                end
            else
                return true
            end
        end


        def self.html_test(results)
            if results.present?
                results.each do |source, string|
                    case string
                    when "<input type='image'>" || "<input type='button'>" || "<input type='password'>" || "<input type='file'>"
                        puts IO.read(File.join Amphtml.root, "amphtml", "test", "templates", "html", "input.md")
                        puts source
                    when "<base>" || "<img>" || "<video>" || "<audio>" || "<iframe>" || "<frame>" || "<frameset>" || "<object>" || "<param>" || "<applet>" || "<embed>"
                        puts IO.read(File.join Amphtml.root, "amphtml", "test", "templates", "html", "#{string.tr('<>', '')}.md")
                        puts source
                    else
                        puts IO.read(File.join Amphtml.root, "amphtml", "test", "templates", "html", "#{string}.md")
                        puts source
                    end
                end
            else
                return true
            end
        end

    end
end
