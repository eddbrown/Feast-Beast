require "instagram"

Instagram.configure do |config|
  config.client_id = Rails.application.secrets.instagram_id
  config.client_secret = Rails.application.secrets.instagram_secret
end