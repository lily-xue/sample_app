# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
token_file = Rails.root.join('.secret')
if File.exist?(token_file)
   File.read(token_file).chomp
else
 token = SecureRandom.hex(64)
 File.write(token_file, token)
token
end
end

SampleApp::Application.config.secret_key_base = secure_token
#SampleApp::Application.config.secret_key_base = 'dbad1785cf892b07cf3e7815c3c75357a9fd1aa3337d6f7286369e09cb567472f192d0b26c630ea92dc2ff8823bc5b2069ec560d68c0257b7722329b38ffefba'
