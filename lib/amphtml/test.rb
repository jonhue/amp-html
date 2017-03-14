module Amphtml
    module Test

        def all
        end

        def markup
        end

        def html
        end

        def css
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

        private

        def search_file_for(dir, strings: [])
            Dir.foreach(Rails.root + dir) do |file|
                next if file == '.' or item == '..'
                File.open(file, "r") do |file_handle|
                    file_handle.each_line do |line_number|
                        strings.any? do |word|
                            if line.includes?(word)
                                string = word
                                source = file + ":" + line_number
                                break
                            end
                        end
                    end
                end
            end
            return string, source
        end

    end
end
