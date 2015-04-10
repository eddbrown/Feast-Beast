class YelpContent < ActiveRecord::Base

require 'yelp'

  Yelp.client.configure do |config|
    config.consumer_key = Rails.application.secrets.yelp_consumer_key
    config.consumer_secret = Rails.application.secrets.yelp_consumer_secret
    config.token = Rails.application.secrets.yelp_token
    config.token_secret = Rails.application.secrets.yelp_token_secret
  end

end
