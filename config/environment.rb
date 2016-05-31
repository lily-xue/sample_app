# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
SampleApp::Application.initialize!
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.server_settings = {
   :address => "smtp.163.com",
   :port => 25,
   :domain => "www.163.com",
   :authentication => :login,
   :user_name => "yyhinabian@163.com",
   :password => "123456mm",
}
