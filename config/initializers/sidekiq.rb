uri = URI(ENV['REDIS_JOBS_URL'])
uri.password = Rails.application.secrets.redis_jobs_password

Sidekiq.configure_server { |config| config.redis = { url: uri.to_s } }
Sidekiq.configure_client { |config| config.redis = { url: uri.to_s } }
