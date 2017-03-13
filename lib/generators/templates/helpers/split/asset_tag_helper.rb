require "active_support/core_ext/array/extract_options"
require "active_support/core_ext/hash/keys"
require "action_view/helpers/asset_url_helper"
require "action_view/helpers/tag_helper"

module ActionView
    module Helpers
        module AssetTagHelper
            extend ActiveSupport::Concern

            include AssetUrlHelper
            include TagHelper

            def ad_tag(options = {})
                options = options.symbolize_keys

                options[:layout] = "responsive"
                tag("amp-ad", options)
            end

            # Returns an AMP iframe tag for the +source+. The +source+ must be a full URL.
            #
            # ==== Examples
            #
            #   image_tag("icon")
            #   # => <img alt="Icon" src="/assets/icon" />
            #   image_tag("icon.png")
            #   # => <img alt="Icon" src="/assets/icon.png" />
            #   image_tag("icon.png", size: "16x10", alt: "Edit Entry")
            #   # => <img src="/assets/icon.png" width="16" height="10" alt="Edit Entry" />
            #   image_tag("/icons/icon.gif", size: "16")
            #   # => <img src="/icons/icon.gif" width="16" height="16" alt="Icon" />
            #   image_tag("/icons/icon.gif", height: '32', width: '32')
            #   # => <img alt="Icon" height="32" src="/icons/icon.gif" width="32" />
            #   image_tag("/icons/icon.gif", class: "menu_icon")
            #   # => <img alt="Icon" class="menu_icon" src="/icons/icon.gif" />
            #   image_tag("/icons/icon.gif", data: { title: 'Rails Application' })
            #   # => <img data-title="Rails Application" src="/icons/icon.gif" />
            def iframe_tag(source, options = {})
                options = options.symbolize_keys

                options[:src] = source
                options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]

                options[:layout] = "responsive"
                tag("amp-ad", options)
            end

            # Returns an HTML image tag for the +source+. The +source+ can be a full
            # path or a file.
            #
            # ==== Options
            #
            # You can add HTML attributes using the +options+. The +options+ supports
            # two additional keys for convenience and conformance:
            #
            # * <tt>:alt</tt>  - If no alt text is given, the file name part of the
            #   +source+ is used (capitalized and without the extension)
            # * <tt>:size</tt> - Supplied as "{Width}x{Height}" or "{Number}", so "30x45" becomes
            #   width="30" and height="45", and "50" becomes width="50" and height="50".
            #   <tt>:size</tt> will be ignored if the value is not in the correct format.
            #
            # ==== Examples
            #
            #   image_tag("icon")
            #   # => <img alt="Icon" src="/assets/icon" />
            #   image_tag("icon.png")
            #   # => <img alt="Icon" src="/assets/icon.png" />
            #   image_tag("icon.png", size: "16x10", alt: "Edit Entry")
            #   # => <img src="/assets/icon.png" width="16" height="10" alt="Edit Entry" />
            #   image_tag("/icons/icon.gif", size: "16")
            #   # => <img src="/icons/icon.gif" width="16" height="16" alt="Icon" />
            #   image_tag("/icons/icon.gif", height: '32', width: '32')
            #   # => <img alt="Icon" height="32" src="/icons/icon.gif" width="32" />
            #   image_tag("/icons/icon.gif", class: "menu_icon")
            #   # => <img alt="Icon" class="menu_icon" src="/icons/icon.gif" />
            #   image_tag("/icons/icon.gif", data: { title: 'Rails Application' })
            #   # => <img data-title="Rails Application" src="/icons/icon.gif" />
            def image_tag(source, options = {})
                options = options.symbolize_keys
                check_for_image_tag_errors(options)

                src = options[:src] = path_to_image(source, skip_pipeline: options.delete(:skip_pipeline))

                unless src.start_with?("cid:") || src.start_with?("data:") || src.blank?
                    options[:alt] = options.fetch(:alt) { image_alt(src) }
                end

                options[:width], options[:height] = extract_dimensions(options.delete(:size)) if options[:size]

                options[:layout] = "responsive"
                tag("amp-img", options)
            end

            # Returns an HTML video tag for the +sources+. If +sources+ is a string,
            # a single video tag will be returned. If +sources+ is an array, a video
            # tag with nested source tags for each source will be returned. The
            # +sources+ can be full paths or files that exists in your public videos
            # directory.
            #
            # ==== Options
            # You can add HTML attributes using the +options+. The +options+ supports
            # two additional keys for convenience and conformance:
            #
            # * <tt>:poster</tt> - Set an image (like a screenshot) to be shown
            #   before the video loads. The path is calculated like the +src+ of +image_tag+.
            # * <tt>:size</tt> - Supplied as "{Width}x{Height}" or "{Number}", so "30x45" becomes
            #   width="30" and height="45", and "50" becomes width="50" and height="50".
            #   <tt>:size</tt> will be ignored if the value is not in the correct format.
            # * <tt>:poster_skip_pipeline</tt> will bypass the asset pipeline when using
            #   the <tt>:poster</tt> option instead using an asset in the public folder.
            #
            # ==== Examples
            #
            #   video_tag("trailer")
            #   # => <video src="/videos/trailer"></video>
            #   video_tag("trailer.ogg")
            #   # => <video src="/videos/trailer.ogg"></video>
            #   video_tag("trailer.ogg", controls: true, preload: 'none')
            #   # => <video preload="none" controls="controls" src="/videos/trailer.ogg" ></video>
            #   video_tag("trailer.m4v", size: "16x10", poster: "screenshot.png")
            #   # => <video src="/videos/trailer.m4v" width="16" height="10" poster="/assets/screenshot.png"></video>
            #   video_tag("trailer.m4v", size: "16x10", poster: "screenshot.png", poster_skip_pipeline: true)
            #   # => <video src="/videos/trailer.m4v" width="16" height="10" poster="screenshot.png"></video>
            #   video_tag("/trailers/hd.avi", size: "16x16")
            #   # => <video src="/trailers/hd.avi" width="16" height="16"></video>
            #   video_tag("/trailers/hd.avi", size: "16")
            #   # => <video height="16" src="/trailers/hd.avi" width="16"></video>
            #   video_tag("/trailers/hd.avi", height: '32', width: '32')
            #   # => <video height="32" src="/trailers/hd.avi" width="32"></video>
            #   video_tag("trailer.ogg", "trailer.flv")
            #   # => <video><source src="/videos/trailer.ogg" /><source src="/videos/trailer.flv" /></video>
            #   video_tag(["trailer.ogg", "trailer.flv"])
            #   # => <video><source src="/videos/trailer.ogg" /><source src="/videos/trailer.flv" /></video>
            #   video_tag(["trailer.ogg", "trailer.flv"], size: "160x120")
            #   # => <video height="120" width="160"><source src="/videos/trailer.ogg" /><source src="/videos/trailer.flv" /></video>
            def video_tag(*sources)
                options = sources.extract_options!.symbolize_keys
                public_poster_folder = options.delete(:poster_skip_pipeline)
                sources << options
                multiple_sources_tag_builder("amp-video", sources) do |tag_options|
                  tag_options[:poster] = path_to_image(tag_options[:poster], skip_pipeline: public_poster_folder) if tag_options[:poster]
                  tag_options[:width], tag_options[:height] = extract_dimensions(tag_options.delete(:size)) if tag_options[:size]
                end
            end

            # Returns an HTML audio tag for the +source+.
            # The +source+ can be full path or file that exists in
            # your public audios directory.
            #
            #   audio_tag("sound")
            #   # => <audio src="/audios/sound"></audio>
            #   audio_tag("sound.wav")
            #   # => <audio src="/audios/sound.wav"></audio>
            #   audio_tag("sound.wav", autoplay: true, controls: true)
            #   # => <audio autoplay="autoplay" controls="controls" src="/audios/sound.wav"></audio>
            #   audio_tag("sound.wav", "sound.mid")
            #   # => <audio><source src="/audios/sound.wav" /><source src="/audios/sound.mid" /></audio>
            def audio_tag(*sources)
                multiple_sources_tag_builder("amp-audio", sources)
            end

        end
    end
end
