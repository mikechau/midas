class Mailchimp

  def self.subscribe(email)
    Gibbon::API.new.lists.subscribe({
      id: ENV["NEWSLETTER_ID"],
      email: { email: email }
    })
  end

end