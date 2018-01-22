# sidekiq_config = { url: ENV['ACTIVE_JOB_URL'] }
redis_jobs_password = Rails.application.secrets.redis_jobs_password
redis_jobs_host     = ENV['REDIS_JOBS_HOST']
redis_jobs_port     = ENV['REDIS_JOBS_PORT']
redis_jobs_url      = "redis://:#{redis_jobs_password}@#{redis_jobs_host}:#{redis_jobs_port}/0"
# puts 'X'*80, redis_jobs_url

Sidekiq.configure_server { |config| config.redis = { url: redis_jobs_url } }
Sidekiq.configure_client { |config| config.redis = { url: redis_jobs_url } }
