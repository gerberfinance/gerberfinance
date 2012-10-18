class NotificationsMailer < ActionMailer::Base

  default :from => "noreply@gerberfinance.com"
  default :to => "sjoseph@gerberfinance.com"

  def new_message(message)
    @message = message
    mail(:subject => "[YourWebsite.tld] #{message.subject}")
  end

end
