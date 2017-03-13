begin
    require 'rails'
    require 'thor'
rescue Exception => e
    puts "Ensure you are in a Ruby on Rails environment."
end

module Amphtml

    def self.validate(uri)

        require 'highline'
        cli = HighLine.new
        answer = cli.ask "Is your rails server running? [y/n]"
        exit unless answer == "y"

        require 'launchy'

        if uri.present? && uri != "root"
            Launchy.open( uri + "#development=1", :debug ) do |exception|
                puts "Attempted to open #{uri} and failed because of: #{exception}"
            end
        else
            if Rails.env.development?
                Launchy.open( "lvh.me:3000" + "#development=1", :debug ) do |exception|
                    puts "Attempted to open #{uri} and failed because of: #{exception}"
                end
            else
                puts "If you are not in the development environment, you need to specify the exact uri for the site you want to validate."
            end
        end

        puts "=> Open the Developer Console and check for validation errors."

        exit
        
    end

end
