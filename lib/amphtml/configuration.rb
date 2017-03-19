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


    def self.split_view
        config = get_config
        if config.key(:split_view)
            config[:split_view]
        else
            false
        end
    end


    def self.application
        config = get_config
        if config.key(:application)
            def self.name
                if config[:application].key(:name)
                    config[:application][:name]
                else
                    Rails.application.class.parent
                end
            end
            def self.type
                if config[:application].key(:type)
                    config[:application][:type]
                else
                    nil
                end
            end
            def self.date_published
                if config[:application].key(:date_published)
                    config[:application][:date_published]
                else
                    DateTime.now
                end
            end
            def self.image
                if config[:application].key(:image)
                    config[:application][:image]
                else
                    nil
                end
            end
        end
    end


    def self.analytics_default_vendor
        config = get_config
        if config.key(:analytics) && config[:analytics].key(:default_vendor)
            config[:analytics][:default_vendor]
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


    def self.ad_default_network
        config = get_config
        if config.key(:ad) && config[:ad].key(:default_network)
            config[:ad][:default_network]
        else
            nil
        end
    end

    def self.auto_ads_default_network
        config = get_config
        if config.key(:ad) && config[:ad].key(:auto_ads) && config[:ad][:auto_ads].key(:default_network)
            config[:ad][:auto_ads][:default_network]
        else
            nil
        end
    end


    def self.social_share_default_provider
        config = get_config
        if config.key(:social) && config[:social].key(:share) && config[:social][:share].key(:default_provider)
            config[:social][:share][:default_provider]
        else
            nil
        end
    end
    def self.social_share_default_data_share_endpoint
        config = get_config
        if config.key(:social) && config[:social].key(:share) && config[:social][:share].key(:default_data_share_endpoint)
            config[:social][:share][:default_data_share_endpoint]
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
