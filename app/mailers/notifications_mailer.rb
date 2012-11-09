class NotificationsMailer < ActionMailer::Base

  default :from => 'Gerber Finance Inc.'

  def new_message(message)
    @message = message
    attachments["gerber_finance_app.pdf"] = File.read("#{Rails.root}/app/assets/images/gerber_finance_app.pdf")
    mail :to  => message.email, :subject => 'Thank you for contacting Gerber Finance Inc.'
   
  end
  
  
  def new_request(message)
  	 @message = message
     mail :to  => "egoynatsky@gerberfinance.com", "jpalmer@gerberfinance.com", "gjoseph@gerberfinance.com", :subject => 'New Request'
     
  end
  
  def profit=(num)
  num.gsub!(',','') if num.is_a?(String)
  self[:profit] = num
end
end
