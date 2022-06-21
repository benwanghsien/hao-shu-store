module ApplicationHelper
  def nav_login
    if user_signed_in?
      concat content_tag(:li, link_to("登出", destroy_user_session_path, class: "nav-link", method: :delete), class: "nav-item")
    else
      concat content_tag(:li, link_to("註冊", new_user_registration_path, class: "nav-link"), class: "nav-item")
      concat content_tag(:li, link_to("登入", new_user_session_path, class: "nav-link"), class: "nav-item")
    end
  end
end
