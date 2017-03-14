module Amphtml
    class Test

        def self.all
        end

        def self.markup
        end

        def self.html
        end

        def self.css
            search_file_for(Rails.root.join('app', 'views'), ["@import", "!important", "-amp-", "i-amp-"])
            case string
            when "@import"
                warn "ERROR (AMP): CSS cannot contain `@import`"
            when "!important"
                warn "ERROR (AMP): Usage of the `!important` qualifier is not allowed"
            when "-amp-"
                warn "ERROR (AMP): `-amp-` is reserved for internal use by the AMP runtime"
            when "i-amp-"
                warn "ERROR (AMP): `i-amp-` is reserved for internal use by the AMP runtime"
            end
            puts source
        end

        # private

        def self.search_file_for(dir, strings)
            Dir.foreach(dir) do |file|
                next if file == '.' or file == '..'
                # puts file
                if File.file?(file)
                    line_number = 0
                    IO.foreach(file) do |line|
                        line_number = line_number + 1
                        # return strings.select { |string| line.include?(string) }, file + ":" + line_number.to_s
                        # return strings.detect { |string| line.include?(string) }, file + ":" + line_number.to_s
                        if strings.any? { |string| line.include?(string) }
                            string = strings.detect { |string| line.include?(string) }
                            source = file + ":" + line_number.to_s
                            return string, source
                        end
                    end
                else
                    search_file_for(file, strings)
                end
            end

            return nil
        end

    end
end
