module ApplicationHelper

    def amp_user_notification(id)
        options[:id] = id
        options[:layout] = "nodisplay"
        content_tag("amp-user-notification", options)
    end

    def amp_close_user_notification_button(id)
        options[:on] = "tap:" + id + ".dismiss"
        content_tag("button", options)
    end

end
