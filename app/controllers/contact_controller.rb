class ContactController < ApplicationController
  
  def new
    @message = Message.new
    render :layout => false
  end

  def create
    @message = Message.new(params[:message])

    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      NotificationsMailer.new_request(@message).deliver
      redirect_to(calc_path :alert => "Message was successfully sent.")
    else
      flash.now.alert = "Please fill all fields."
      render :new, :layout =>false
    end
  end

end