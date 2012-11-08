class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :adjust_format_for_iphone

private
  # Set iPhone format if request to iphone.gerberfinance.com
  def adjust_format_for_iphone
    request.format = :iphone if iphone_request?
  end
  # Return true for requests to iphone.gerberfinance.com
  def iphone_request?
    return (request.subdomains.first == "iphone" || params[:format] == "iphone")
  end

end
