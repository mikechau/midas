class UserMailer < ActionMailer::Base
  default from: "noreply@rb-trader.com"
  default "Message-ID" => lambda {"#{SecureRandom.uuid}@#{ENV['HEADER_DOMAIN']}"}

  def contact(email, subject, message)
    mail(:to => "marketing@rb-trader.com",
         :from => email,
         :subject => subject,
         :body => message)
  end

end
