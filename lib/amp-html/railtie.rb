require 'rails/railtie'

module AmpHtml
    class Railtie < Rails::Railtie

        initializer 'amp-html.mozaic' do
            Mozaic.configure do |config|



                ### Base

                config.define_component 'amp/doctype'
                config.define_component 'amp/amp-link', rel: 'amphtml' do
                    return false unless AmpHtml.configuration.split_view
                    options[:href] = options[:href].split('?').first
                    unless AmpHtml.configuration.split_view_default == 'amp'
                        options[:href] = "#{options[:href]}?#{{ amp: true }.to_query}"
                    end
                end
                config.define_component 'amp/canonical-link', rel: 'canonical' do
                    return false unless AmpHtml.configuration.split_view
                    options[:href] = options[:href].split('?').first
                    if AmpHtml.configuration.split_view_default == 'amp'
                        options[:href] = "#{options[:href]}?#{{ amp: false }.to_query}"
                    end
                end
                config.define_component 'amp/head'



                ### Media

                config.define_component 'amp/img', layout: 'responsive' do
                    options[:src] = image_url options[:src]
                end
                config.define_component 'amp/video', layout: 'responsive' do
                    options[:poster] = image_url(options[:poster]) if options.has_key?(:poster)
                    options[:src] = asset_url(options[:src]) if options.has_key?(:src)
                    if options.has_key?(:sources)
                        options[:sources].each do |source|
                            source[:src] = asset_url options[:src]
                        end
                    end
                end
                config.define_component 'amp/audio' do
                    options[:src] = asset_url(options[:src]) if options.has_key?(:src)
                    if options.has_key?(:sources)
                        options[:sources].each do |source|
                            source[:src] = asset_url options[:src]
                        end
                    end
                end



                ### Presentation

                config.define_component 'amp/font', layout: 'nodisplay'



                ### Dynamic content

                config.define_component 'amp/form', method: :post, target: '_top' do
                    if options[:method].to_sym = :get
                        if options[:ajax]
                            options[:"action-xhr"] = options[:action]
                        else
                            options[:action] = options[:action]
                        end
                    else
                        options[:"action-xhr"] = options[:action]
                    end
                    options.delete(:ajax)
                    options[:on] = "#{options[:on] + ';' if options[:on]}
                                    #{'submit:' + options[:submit] + ';' if options[:submit]}
                                    #{'submit-success:' + options[:success] + ';' if options[:success]}
                                    #{'submit-error:' + options[:error] + ';' if options[:error]}
                                    #{'valid:' + options[:valid] + ';' if options[:valid]}
                                    #{'invalid:' + options[:invalid] + ';' if options[:invalid]}"
                    options = options.except(:submit, :success, :error, :valid, :invalid)
                end
                config.define_component 'amp/form-response', type: :success do
                    options[:"submit-#{options.delete(:type)}"] = true
                end
                config.define_component 'amp/input' do
                    options[:on] = "#{options[:on] + ';' if options[:on]}
                                    #{'onchange:' + options[:onchange] + ';' if options[:onchange]}"
                    options = options.except(:onchange)
                end
                config.define_component 'amp/selector', layout: 'container' do
                    options[:on] = "#{options[:on] + ';' if options[:on]}
                                    #{'onchange:' + options[:onchange] + ';' if options[:onchange]}"
                    options = options.except(:onchange)
                end
                config.define_component 'amp/mustache' do
                    options[:type] = 'amp-mustache'
                end

            end
        end

    end
end
