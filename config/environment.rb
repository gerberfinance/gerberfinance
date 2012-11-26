# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Gerber::Application.initialize!

# Load the rails application
require File.expand_path('../application', __FILE__)
require 'ntlm/smtp'

APP_CONFIG = YAML.load_file("#{Rails.root}/config/config.yml")




