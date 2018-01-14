module AmpHtml

    class << self
        attr_accessor :configuration
    end

    def self.configure
        self.configuration ||= Configuration.new
        yield configuration
    end

    class Configuration

        attr_accessor :default_format

        def initialize
            @default_format = 'amp'
        end

    end
end
