require 'thor'

class AmpHtml::Cli < Thor

    check_unknown_options!

    desc 'version', 'amp-html version'
    map %w[--version] => :version

    def version
        puts ::AmpHtml::Version.current
    end


    desc 'validate URL', 'Validate an amp-html view'
    map %w[--validate] => :validate

    option :server_running, desc: 'Passes information that the server is running (optional)', type: :boolean, default: false, aliases: '-r'

    def validate url
        puts ::AmpHtml::Validate.validate url, options[:server_running]
    end

end
