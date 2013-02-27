class ContactController < ApplicationController
  
  def new
    @message = Message.new
    
  end

  def create
    @message = Message.new(params[:message])

    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      NotificationsMailer.new_request(@message).deliver
	  render :text => '<script type="text/javascript"> window.parent.TINY.box.hide() </script>'
    else
      flash.now.alert = "Please fill all fields."
      render :new, :layout =>false
    end
  end

end