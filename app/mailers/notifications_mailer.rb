class NotificationsMailer < ActionMailer::Base

  default :from => 'sjoseph@gerberfinance.com'

  def new_message(message)
    @message = message
    attachments["Finance_Application.pdf"] = File.read("#{Rails.root}/app/assets/images/Finance_Application.pdf")
    mail :to  => @message.email, :subject => 'Thank you for contacting Gerber Finance Inc.'
   
  end
  
  
  def new_request(message)
  	 @message = message
      mail(:to => "web@gerberfinance.com", :subject => "A New Request",
     		:cc => ["sjoseph80@gerberfinance.com", "g3eng1224@gmail.com"])     
  end 
  
  def profit=(num)
  num.gsub!(',','') if num.is_a?(String)
  self[:profit] = num
end
end
