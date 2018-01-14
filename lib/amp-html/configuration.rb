module AmpHtml

    class << self
        attr_accessor :configuration
    end

    def self.configure
        self.configuration ||= Configuration.new
        yield configuration
    end

    class Configuration

        attr_accessor :inherit_stylesheets
        attr_accessor :split_view
        attr_accessor :split_view_default

        def initialize
            @inherit_stylesheets = false
            @split_view = false
            @split_view_default = 'amp'
        end

    end
end
