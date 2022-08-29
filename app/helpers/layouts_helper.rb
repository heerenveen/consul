module LayoutsHelper
  def layout_menu_link_to(text, path, is_active, options)
    title = t("shared.go_to_page") + text

    hide_class = "hide" unless Rails.env.test?

    if is_active
      tag.span(t("shared.you_are_in"), class: "show-for-sr") + " " +
        link_to(text, path, options.merge(class: "is-active #{hide_class}", title: title))
    else
      link_to(text, path, options.merge(title: title, class: hide_class.to_s))
    end
  end

  def layout_login_menu_link_to(text, path, is_active, options)
    title = t("shared.go_to_page") + text

    if is_active
      tag.span(t("shared.you_are_in"), class: "show-for-sr") + " " +
        link_to(text, path, options.merge(class: "is-active", title: title))
    else
      link_to(text, path, options.merge(title: title))
    end
  end
end
