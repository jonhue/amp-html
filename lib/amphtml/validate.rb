module Amphtml
    class Validate

        require 'highline'
        require 'launchy'

        def self.validate(url, server_running)

            unless server_running
                cli = HighLine.new
                answer = cli.ask "Is your rails server running? [y/n]"
                unless answer == "y"
                    warn "Rerun `amphtml validate URL` while your server is running"
                    puts "Starting your rails server ..."
                    exec "rails s"
                end
            end

            validation_url = url + "#development=1"
            root_validation_url = "http://localhost:3000" + "#development=1"

            if url.present? && url != "root"
                Launchy.open( validation_url ) do |exception|
                    warn "Attempted to open #{url} and failed because of: #{exception}. Open #{validation_url} in your browser instead."
                    exit
                end
            else
                if Rails.env.development?
                    Launchy.open( root_validation_url ) do |exception|
                        warn "Attempted to open #{url} and failed because of: #{exception}. Open #{root_validation_url} in your browser instead."
                        exit
                    end
                else
                    warn "If you are not in the development environment, you need to specify the exact uri for the site you want to validate."
                    exit
                end
            end

            puts "=> Open the Developer Console and check for validation errors."

            exit

        end

    end
end
