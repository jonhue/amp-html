require 'rails'

module Amphtml

    def self.validate(uri)
        require 'launchy'

        Launchy.open( uri + "#development=1", :debug ) do |exception|
            puts "Attempted to open #{uri} and failed because of: #{exception}"
        end

        puts "Open the Developer Console and check for validation errors."
    end

end
