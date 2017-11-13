OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '292520040417-96bbge7soutlhek5htt9s074tb3ppnvl.apps.googleusercontent.com', '0hVDhMfHRqDMzrhNWe_dBbaZ', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end