# Rails.application.config.middleware.use OmniAuth::Builder do
#  provider :facebook, ENV['1515064185465928'], ENV['FACEBOOK_SECRET']
# end

OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1515064185465928', '90caa98785bc4a2772a3cc456128e21c', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end