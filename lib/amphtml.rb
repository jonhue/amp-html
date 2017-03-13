require 'rails'

module Amphtml

    def self.debug(uri)
        require 'launchy'

        Launchy.open( uri + "#development=1", :debug ) do |exception|
            puts "Attempted to open #{uri} and failed because #{exception}"
        end

        puts "Open the Developer Console and check for validation errors."
    end

end
