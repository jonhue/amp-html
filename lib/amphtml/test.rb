module Amphtml
    class Test

        require 'rails'

        def self.validate(uri)

            require 'highline'
            cli = HighLine.new
            answer = cli.ask "Is your rails server running? [y/n]"
            unless answer == "y"
                warn "Please start your rails server first."
                exit
            end

            require 'launchy'

            if uri.present? && uri != "root"
                Launchy.open( uri + "#development=1", :debug ) do |exception|
                    warn "Attempted to open #{uri} and failed because of: #{exception}"
                    exit
                end
            else
                if Rails.env.development?
                    Launchy.open( "localhost:3000" + "#development=1", :debug ) do |exception|
                        warn "Attempted to open #{uri} and failed because of: #{exception}"
                        exit
                    end
                else
                    warn "If you are not in the development environment, you need to specify the exact uri for the site you want to validate."
                    exit
                end
            end

            puts "=> Open the Developer Console and check for validation errors."

            exit

        end
        def self.validate
            puts 'Please pass the URI you attempt to validate as a parameter or pass "root" to validate your application root.'
            puts 'Example: Amphtml.validate("https://slooob.com")'
            puts '**Note:** "root" parameter is only available in development environment!'
            exit
        end
        

        def self.all
        end

        def self.markup
        end

        def self.html
        end

        def self.css
            require 'highline'

            strings = ["@import", "!important", "-amp-", "i-amp-"]
            results = search_files_in_dir_for(Rails.root.join('app', 'views'), strings)
            if results.present?
                results.each do |source, string|
                    case string
                    when "@import"
                        warn "ERROR (AMP): CSS cannot contain `@import`"
                        puts source
                        cli = HighLine.new
                        answer = cli.ask "Delete line? [y/n]"
                        if answer == "y"
                            # do something ...
                        end
                    when "!important"
                        warn "ERROR (AMP): Usage of the `!important` qualifier is not allowed"
                        puts source
                    when "-amp-"
                        warn "ERROR (AMP): `-amp-` is reserved for internal use by the AMP runtime"
                        puts source
                    when "i-amp-"
                        warn "ERROR (AMP): `i-amp-` is reserved for internal use by the AMP runtime"
                        puts source
                    end
                end
            else
                puts "AMP-HTML TEST: CSS tests executed without exceptions"
            end
        end

        private

        def search_files_in_dir_for(dir, strings)
            results = {}

            Dir.foreach(dir) do |file|
                next if file == '.' or file == '..'
                if File.file?(file)
                    line_number = 0
                    IO.foreach(file) do |line|
                        line_number = line_number + 1
                        if strings.any? { |string| line.include?(string) }
                            string = strings.detect { |string| line.include?(string) }
                            source = file + ":" + line_number.to_s
                            results[source] = string
                        end
                    end
                else
                    # Search child directories
                    # search_file_for(file, strings)
                end
            end

            if results.present?
                return results
            else
                return nil
            end
        end

    end
end
