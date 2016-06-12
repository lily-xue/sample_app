# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
SampleApp::Application.initialize!
ActionMailer::Base.delivery_method = :smtp
#config.action_mailer.perform_deliveries = true  
#config.action_mailer.raise_delivery_errors = true  
#config.action_mailer.default :charset => "utf-8"  
#config.action_mailer.default_url_options = { :host => 'localhost:3000' }  
ActionMailer::Base.smtp_settings = {
   :address => "smtp.163.com",
   :port => 25,
   :domain => "www.163.com",
   :authentication => :login,
   :user_name => "yyhinabian@163.com",
   :password => "123456mm",
   :enable_starttls_auto => true
}
