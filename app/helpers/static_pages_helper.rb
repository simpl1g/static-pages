module StaticPagesHelper
  def link_to_gravatar(email, size=150)
    "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}?d=monsterid&s=#{size}"
  end
end
