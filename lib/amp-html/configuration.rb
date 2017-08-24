module AmpHtml

    def self.default_format
        config = get_config
        if config.key(:default_format)
            config[:default_format]
        else
            'amp'
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


    def self.assets_only_amp
        config = get_config
        if config.key(:assets) && config[:assets].key(:only_amp)
            config[:assets][:only_amp]
        else
            if AmpHtml.split_view
                false
            else
                true
            end
        end
    end


    def self.application_name
        config = get_config
        if config.key(:application) && config[:application].key(:name)
            config[:application][:name]
        else
            Rails.application.class.parent
        end
    end
    def self.application_type
        config = get_config
        if config.key(:application) && config[:application].key(:type)
            config[:application][:type]
        else
            nil
        end
    end
    def self.application_date_published
        config = get_config
        if config.key(:application) && config[:application].key(:date_published)
            config[:application][:date_published]
        else
            DateTime.now
        end
    end
    def self.application_image
        config = get_config
        if config.key(:application) && config[:application].key(:image)
            config[:application][:image]
        else
            nil
        end
    end


    def self.forms_selector
        config = get_config
        if config.key(:forms) && config[:forms].key(:amp_selector)
            config[:forms][:amp_selector]
        else
            false
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

        begin
            YAML.load_file 'config/amp-html.yml'
        rescue Exception => e
            warn 'WARNING (AMP): You need to run `rails g amp_html:bundle` first.'
            # exit
        end
    end

end
