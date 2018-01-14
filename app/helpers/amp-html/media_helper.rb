module AmpHtml
    module MediaHelper

        def image_tag source, options = {}
            amp? ? component('amp/img', options.merge(src: source)) : super
        end
        def video_tag *sources
            amp? ? component('amp/video', options.merge(sources: sources)) : super
        end
        def audio_tag *sources
            amp? ? component('amp/audio', options.merge(sources: sources)) : super
        end

    end
end
