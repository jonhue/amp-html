module AmpHtml
    class Test

        def self.all
            markup
            html
            css
        end

        def self.markup
            strings = ['<!doctype', '<html', 'amp_html_doctype', '<head', '<body', 'canonical_document_link', 'amp_document_link', 'amp_head', '<meta name="viewport" content="width=device-width,minimum-scale=1']

            results = search_files_in_dir_for File.join('app', 'views'), strings
            test1 = markup_test results

            if test1
                puts 'AMP-HTML TEST: MARKUP tests executed without exceptions'
            else
                puts 'AMP-HTML TEST: MARKUP tests have failed. Learn more about the required markup of AMP pages: https://github.com/ampproject/amphtml/blob/master/spec/amp-html-format.md#required-markup'
            end
        end

        def self.html
            strings = ['javascript_include_tag', 'stylesheet_link_tag', '<base', '<img', '<video', '<audio', '<iframe', '<frame', '<frameset', '<object', '<param', '<applet', '<embed', "<input type='image'", "<input type='button'", "<input type='password'", "<input type='file'", 'http-equiv', 'onclick', 'onmouseover']

            results = search_files_in_dir_for File.join('app', 'views'), strings
            test1 = html_test results

            if test1
                puts 'AMP-HTML TEST: HTML tests executed without exceptions'
            else
                puts 'AMP-HTML TEST: HTML tests have failed. Learn more about AMP format restrictions in HTML: https://github.com/ampproject/amphtml/blob/master/spec/amp-html-format.md#html-tags'
            end
        end

        def self.css
            strings = ['@import', '!important', '-amp-', 'i-amp-', 'behavior', '-moz-binding', 'filter', 'overflow: auto', 'overflow: scroll', 'overflow-x: auto', 'overflow-x: scroll', 'overflow-y: auto', 'overflow-y: scroll']

            results = search_files_in_dir_for File.join('app', 'views'), strings
            test1 = css_test results

            results = search_files_in_dir_for File.join('app', 'assets', 'stylesheets', 'amp'), strings
            test2 = css_test results

            if test1 && test2
                puts 'AMP-HTML TEST: CSS tests executed without exceptions'
            else
                puts 'AMP-HTML TEST: CSS tests have failed. Learn more about AMP format restrictions in CSS: https://github.com/ampproject/amphtml/blob/master/spec/amp-html-format.md#stylesheets'
            end
        end

        private

        def self.search_files_in_dir_for dir, strings

            # ## OLD SOLUTION
            #
            # @results = {}
            # Dir.foreach(dir) do |file|
            #     complete_path = File.join(dir, file)
            #     next if file == '.' or file == '..'
            #     if File.file?(complete_path)
            #         # puts "AMP-HTML TEST: Testing '#{complete_path}'"
            #         line_number = 0
            #         IO.foreach(complete_path) do |line|
            #             line_number = line_number + 1
            #             if strings.any? { |string| line.include?(string) }
            #                 string = strings.detect { |string| line.include?(string) }
            #                 source = "=> " + complete_path + ":" + line_number.to_s
            #                 @results[source] = string
            #             end
            #         end
            #     else
            #         # Search child directories
            #         search_files_in_dir_for(complete_path, strings)
            #     end
            # end

            require 'pathname'
            @results = {}

            files, dirs = Pathname.glob(File.join(dir, '**/*')).partition &:file?

            files.each do |file|
                # puts "AMP-HTML TEST: Testing '#{file}'"
                line_number = 0
                IO.foreach(file) do |line|
                    line_number = line_number + 1
                    if strings.any? { |string| line.include?(string) }
                        string = strings.detect { |string| line.include?(string) }
                        source = '=> ' + [file, line_number].join(':')
                        @results[source] = string
                    end
                end
            end

            if @results.present?
                return @results
            else
                return nil
            end

        end


        def self.markup_test results
            if results.present?
                puts check1 = IO.read(File.join AmpHtml.root, 'amp-html', 'test', 'templates', 'markup', 'meta_viewport.md') unless results.has_value?('<meta name="viewport" content="width=device-width,minimum-scale=1')
                puts check2 = IO.read(File.join AmpHtml.root, 'amp-html', 'test', 'templates', 'markup', 'head_body.md') unless results.has_value?('<head') || results.has_value?('<body')
                puts check3 = IO.read(File.join AmpHtml.root, 'amp-html', 'test', 'templates', 'markup', 'amp_html_doctype.md') unless results.has_value?('amp_html_doctype')
                puts check4 = IO.read(File.join AmpHtml.root, 'amp-html', 'test', 'templates', 'markup', 'canonical_document_link.md') unless results.has_value?('canonical_document_link')
                puts check5 = IO.read(File.join AmpHtml.root, 'amp-html', 'test', 'templates', 'markup', 'amp_head.md') unless results.has_value?('amp_head')
                puts check6 = IO.read(File.join AmpHtml.root, 'amp-html', 'test', 'templates', 'markup', 'canonical_document_link.md') if AmpHtml.split_view && results.has_value?('amp_document_link') == false
            end
            unless check1 && check2 && check3 && check4 && check5 && check6
                return true
            end

            return nil
        end


        def self.html_test results
            if results.present?
                results.each do |source, string|
                    case string
                    when "<input type='image'" || "<input type='button'" || "<input type='password'" || "<input type='file'"
                        puts IO.read File.join AmpHtml.root, 'amp-html', 'test', 'templates', 'html', 'input.md'
                        puts source
                    else
                        puts IO.read(File.join AmpHtml.root, 'amp-html', 'test', 'templates', 'html', "#{string.gsub('<', '')}.md")
                        puts source
                    end
                end
            else
                return true
            end

            return nil
        end


        def self.css_test results
            if results.present?
                results.each do |source, string|
                    case string
                    when 'overflow: auto' || 'overflow: scroll' || 'overflow-x: auto' || 'overflow-x: scroll' || 'overflow-y: auto' || 'overflow-y: scroll'
                        puts IO.read File.join AmpHtml.root, 'amp-html', 'test', 'templates', 'css', 'overflow.md'
                        puts source
                    when '-amp-'
                        unless source.include? 'application/amp/_resources.html'
                            puts IO.read File.join AmpHtml.root, 'amp-html', 'test', "templates', 'css', "#{string}.md"
                            puts source
                        end
                    else
                        puts IO.read File.join AmpHtml.root, 'amp-html', 'test', 'templates', 'css', "#{string}.md"
                        puts source
                    end
                end
                return true if results.keys.size == 1 && results[results.keys.first] == '-amp-' && results.keys.first.include?('application/amp/_resources.html')
            else
                return true
            end

            return nil
        end

    end
end
