# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

#Mails
ActionMailer::Base.smtp_settings = {
    :user_name => 'apikey', # This is the string literal 'apikey', NOT the ID of your API key
    :password => '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', # This is the secret sendgrid API key which was issued during API key creation
    :domain => 'gmail.com',
    :address => 'smtp.sendgrid.net',
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
  }