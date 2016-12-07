OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do 
	provider :facebook, '323459461357518', '901537021688ca0c478ed106cac5c047'
end