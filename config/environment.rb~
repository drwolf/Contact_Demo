
# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
ContactDemo::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => ENV["SENDGRIO_LOGIN"],
  :password       => ENV["SENDGRIO_PWD"],
  :domain         => 'heroku.com',
  :enable_starttls_auto => true
}

