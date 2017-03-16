module Amphtml
    class Validate

        require 'highline'
        require 'launchy'

        def self.validate(url)

            cli = HighLine.new
            answer = cli.ask "Is your rails server running? [y/n]"
            unless answer == "y"
                warn "Please start your rails server first."
                exit
            end

            if url.present? && url != "root"
                Launchy.open( url + "#development=1", :debug ) do |exception|
                    warn "Attempted to open #{url} and failed because of: #{exception}"
                    exit
                end
            else
                if Rails.env.development?
                    Launchy.open( "localhost:3000" + "#development=1", :debug ) do |exception|
                        warn "Attempted to open #{url} and failed because of: #{exception}"
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
            puts 'Please pass the URL you attempt to validate as a parameter or pass "root" to validate your application root.'
            puts 'Example: Amphtml.validate("https://slooob.com")'
            puts '**Note:** "root" parameter is only available in development environment!'
            exit
        end

    end
end
