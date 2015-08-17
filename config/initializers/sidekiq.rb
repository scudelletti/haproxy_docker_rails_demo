Sidekiq.configure_server do |config|
  config.redis = { url: "redis://#{ENV['REDIS_1_PORT_6379_TCP_ADDR']}:#{ENV['REDIS_1_PORT_6379_TCP_PORT']}/12" }
end

Sidekiq.configure_client do |config|
  config.redis = { url: "redis://#{ENV['REDIS_1_PORT_6379_TCP_ADDR']}:#{ENV['REDIS_1_PORT_6379_TCP_PORT']}/12" }
end
