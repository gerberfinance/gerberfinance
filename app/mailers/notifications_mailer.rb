class NotificationsMailer < ActionMailer::Base

  default :from => "noreply@gerberfinance.com"

  def new_message(message)
    @message = message
    attachments["scale.png"] = File.read("#{Rails.root}/app/assets/images/rails.png")
    mail :to  => message.email, :subject => 'Thank you'
  end
  
  
  def new_request(message)
  	 @message = message
     mail :to  => "sjoseph@gerberfinance.com", :subject => 'New Request'
  end
end
