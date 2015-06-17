OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
    provider :google_oauth2, Figaro.env.google_client_id, Figaro.env.google_client_secret
end