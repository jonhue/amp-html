require 'rails/railtie'

module AmpHtml
    class Railtie < ::Rails::Railtie

        include ActionView::Helpers::AssetUrlHelper

        initializer 'amp-html.mozaic' do
            Mozaic.configure do |config|


                ### Base

                config.define_component 'amp/doctype', '⚡': ''
                config.define_component 'amp/amp-link', rel: 'amphtml' do |options|
                    href = options[:href].split('?').first
                    unless AmpHtml.configuration.split_view_default == 'amp'
                        options[:href] ||= "#{href}?#{{ amp: true }.to_query}"
                    else
                        options[:href] ||= href
                    end
                    false unless AmpHtml.configuration.split_view
                end
                config.define_component 'amp/canonical-link', rel: 'canonical' do |options|
                    if AmpHtml.configuration.split_view
                        href = options[:href].split('?').first
                        if AmpHtml.configuration.split_view_default == 'amp'
                            options[:href] ||= "#{href}?#{{ amp: false }.to_query}"
                        else
                            options[:href] ||= href
                        end
                    end
                end
                config.define_component 'amp/head'
                config.define_component 'amp/components'



                ### Media

                config.define_component 'amp/img', layout: 'responsive' do |options|
                    options[:src] = image_url options[:src]
                end
                config.define_component 'amp/video', layout: 'responsive' do |options|
                    options[:poster] = image_url(options[:poster]) if options.has_key?(:poster)
                    options[:src] = asset_url(options[:src]) if options.has_key?(:src)
                    if options.has_key?(:sources)
                        options[:sources].each do |source|
                            source[:src] = asset_url options[:src]
                        end
                    end
                end
                config.define_component 'amp/audio' do |options|
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

                config.define_component 'amp/form', method: :post, target: '_top' do |options|
                    unless options[:method].to_sym == :get
                        options[:"action-xhr"] = options[:action]
                    end
                    options[:on] = "#{options[:on] + ';' if options[:on]}
                                    #{'submit:' + options[:submit] + ';' if options[:submit]}
                                    #{'submit-success:' + options[:success] + ';' if options[:success]}
                                    #{'submit-error:' + options[:error] + ';' if options[:error]}
                                    #{'valid:' + options[:valid] + ';' if options[:valid]}
                                    #{'invalid:' + options[:invalid] + ';' if options[:invalid]}"
                    options = options.except(:submit, :success, :error, :valid, :invalid)
                end
                config.define_component 'amp/form-response', type: :success do |options|
                    options[:"submit-#{options.delete(:type)}"] = true
                end
                config.define_component 'amp/input' do |options|
                    options[:on] = "#{options[:on] + ';' if options[:on]}
                                    #{'onchange:' + options[:onchange] + ';' if options[:onchange]}"
                    options = options.except(:onchange)
                end
                config.define_component 'amp/selector', layout: 'container' do |options|
                    options[:on] = "#{options[:on] + ';' if options[:on]}
                                    #{'onchange:' + options[:onchange] + ';' if options[:onchange]}"
                    options = options.except(:onchange)
                end
                config.define_component 'amp/mustache' do |options|
                    options[:type] = 'amp-mustache'
                end


            end
        end

        initializer 'amp-html.assets' do
            Rails.application.config.assets.precompile += ['amp/application.css']
            Dir.glob Rails.root.join('app', 'assets', 'stylesheets', 'amp', 'packages', '**', '*') do |path|
                next if File.directory? path
                path = path.split('stylesheets').last
                path.slice! 0
                Rails.application.config.assets.precompile += [path]
            end
        end

        initializer 'amp-html.action_controller' do
            ActiveSupport.on_load :action_controller do
                include AmpHtml::BaseHelper
            end
        end

    end
end
