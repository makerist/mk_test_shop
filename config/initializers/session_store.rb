# Be sure to restart your server when you modify this file.

# Rails.application.config.session_store :cookie_store, key: '_mk_test_shop_session'

if ENV['REDIS_SESSION'] == 'yes'
  redis_password = Rails.application.secrets.redis_session_password
  redis_host     = ENV['REDIS_SESSION_HOST']
  redis_port     = ENV['REDIS_SESSION_PORT']
  redis_url      = "redis://:#{redis_password}@#{redis_host}:#{redis_port}/0/session"

  Rails.application.config.session_store :redis_store, servers: [redis_url]
end
