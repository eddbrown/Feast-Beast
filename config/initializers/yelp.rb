require 'yelp'

#Yelp.client.configure do |config|
#  config.consumer_key = Rails.application.secrets.yelp_consumer_key#"0D1pVxodjIupLU_WBTJUig"
#  config.consumer_secret = Rails.application.secrets.yelp_consumer_secret#"UfkQOdfV5S8G_HDPslA1xfave_g"#
#  config.token = Rails.application.secrets.yelp_token#"vfxYX-W4swQtybAaoVE2OO7BGC8vVI-K"#
#  config.token_secret = Rails.application.secrets.yelp_token_secret#"SqJLY2bkBOS7TS5tXZxnBt7jCcE"
#end

Yelp.client.configure do |config|
  config.consumer_key = "0D1pVxodjIupLU_WBTJUig"
  config.consumer_secret = "UfkQOdfV5S8G_HDPslA1xfave_g"
  config.token = "vfxYX-W4swQtybAaoVE2OO7BGC8vVI-K"
  config.token_secret = "SqJLY2bkBOS7TS5tXZxnBt7jCcE"
end