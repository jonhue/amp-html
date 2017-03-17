module Amphtml

    def self.default_format
        config = get_config
        if config.key(:default_format)
            config[:default_format]
        else
            "amp"
        end
    end
    def self.raw_format
        config = get_config
        config[:default_format]
    end

    def self.fallback_format
        config = get_config
        config[:fallback_format]
    end


    def self.components
        config = get_config
        if config.key(:components)
            config[:components]
        else
            nil
        end
    end

    private

    def self.get_config
        require 'yaml'
        YAML.load_file('config/amphtml.yml')
    end

end
