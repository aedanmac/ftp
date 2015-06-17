OmniAuth.config.logger = Rails.logger

google_client_id = Figaro.env.google_client_id
google_client_secret = Figaro.env.google_client_secret

Rails.application.config.middleware.use OmniAuth::Builder do
    provider :google_oauth2, google_client_id, google_client_secret
end