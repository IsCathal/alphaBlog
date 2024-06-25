module ApplicationHelper
  def gravator_for(user, options = { size: 80})
    email_address = user.email.downcase
    hash = Digest::SHA256.hexdigest(email_address)
    size = options[:size]
    gravator_url = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"
    image_tag(gravator_url, alt: user.username)
  end



end
