module ApplicationHelper
  def menu_links(links={})
    links.merge! 'Home' => home_path, 'Who We Are' => who_we_are_path, 'About' => about_path
    links.map { |k,v| content_tag(:li, link_to(k, v))}.join.html_safe
  end
end
