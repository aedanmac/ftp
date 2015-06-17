OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
	$google_client_id = Figaro.env.google_client_id
	$google_client_secret = Figaro.env.google_client_secret

    provider :google_oauth2, $google_client_id, $google_client_secret
end