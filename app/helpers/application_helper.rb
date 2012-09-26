module ApplicationHelper
  def menu_links(links=[])
    links = links + [{'Home' => home_path}, {'Who We Are' => who_we_are_path}, {'About' => about_path}]
    sum=""
    links.each do |k|
      x = ""
      k.each { |key, val| x = link_to(key, val)}
      sum << "<li>" + x + "</li>"
    end
    raw sum
  end
end
