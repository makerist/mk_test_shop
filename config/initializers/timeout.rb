Rack::Timeout.timeout = ENV.fetch('RACK_REQUEST_TIMEOUT') { 5 }.to_i
Rack::Timeout::Logger.level = Logger::ERROR