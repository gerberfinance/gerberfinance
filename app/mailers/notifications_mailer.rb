class NotificationsMailer < ActionMailer::Base

  default :from => 'noreply@gerberfinance.com'

  def new_message(message)
    @message = message
    attachments["gerber_finance_app.pdf"] = File.read("#{Rails.root}/app/assets/images/gerber_finance_app.pdf")
    mail :to  => message.email, :subject => 'Thank you for contacting Gerber Finance Inc.'
   
  end
  
  
  def new_request(message)
  	 @message = message
     mail(:to => "sjoseph@gerberfinance.com", :subject => "A New Request",
     		:cc => ["web@gerberfinance.com", "jpalmer@gerberfinance.com"])     
  end 
  
  def profit=(num)
  num.gsub!(',','') if num.is_a?(String)
  self[:profit] = num
end
end
