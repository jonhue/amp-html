require 'rails/generators/base'

module Amphtml
    module Generators

        class InstallGenerator < Rails::Generators::Base

            desc "Install AMP-HTML. Run with --split to keep a version without AMP."

            class_option :split, desc: "Keep an application layout without AMP", type: :boolean, default: false, aliases: '-s'

            unless options[:split]
                source_root File.expand_path("../../templates/install", __FILE__)
                def copy_initializer
                    template "amphtml.rb", "config/initializers/amphtml.rb"
                end
            else
                source_root File.expand_path("../../templates/install/split", __FILE__)
                def copy_initializer
                    template "amphtml.rb", "config/initializers/amphtml.rb"
                end
            end

            def show_readme
                readme "README"
            end

        end

    end
end
