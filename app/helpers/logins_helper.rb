module LoginsHelper
    def gravatar_for(login)
        gravatar_id = Digest::MD5::hexdigest(login.email.downcase)
        gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
        image_tag(gravatar_url, alt: login.name, class: "gravatar")
    end
end
