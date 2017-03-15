begin
    require 'rails'
    require 'thor'
rescue Exception => e
    warn "Ensure you are in a Ruby on Rails environment."
end

module Amphtml

    require 'amphtml/test'

    def self.version
        require 'amphtml/version'
        return VERSION
    end

    def self.help
        puts IO.read("lib/amphtml/help/README")
    end

end
