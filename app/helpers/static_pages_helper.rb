module StaticPagesHelper
  def link_to_gravatar(email)
    "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}?d=monsterid&s=150"
  end
end
