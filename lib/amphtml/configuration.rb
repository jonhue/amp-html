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


    def self.analytics_default_vendor
        config = get_config
        if config.key(:analytics) && config[:analytics].key(:vendor)
            config[:analytics][:vendor]
        else
            nil
        end
    end

    def self.google_analytics_account
        config = get_config
        if config.key(:analytics) && config[:analytics].key(:google_analytics) && config[:analytics][:google_analytics].key(:account)
            config[:analytics][:google_analytics][:account]
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
