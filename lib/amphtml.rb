begin
    require 'rails'
    require 'thor'
rescue Exception => e
    puts "Ensure you are in a Ruby on Rails environment."
end

module Amphtml

    def self.version
        require 'amphtml/version'
        return VERSION
    end

    def self.help
        puts IO.read("lib/amphtml/help/README")
    end

    def self.validate(uri)

        require 'highline'
        cli = HighLine.new
        answer = cli.ask "Is your rails server running? [y/n]"
        unless answer == "y"
            puts "Please start your rails server first."
            exit
        end

        require 'launchy'

        if uri.present? && uri != "root"
            Launchy.open( uri + "#development=1", :debug ) do |exception|
                puts "Attempted to open #{uri} and failed because of: #{exception}"
                exit
            end
        else
            if Rails.env.development?
                Launchy.open( "lvh.me:3000" + "#development=1", :debug ) do |exception|
                    puts "Attempted to open #{uri} and failed because of: #{exception}"
                    exit
                end
            else
                puts "If you are not in the development environment, you need to specify the exact uri for the site you want to validate."
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

end
