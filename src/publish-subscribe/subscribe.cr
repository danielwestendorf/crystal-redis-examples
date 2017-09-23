require "redis"

redis = Redis.new
redis.subscribe("mychannel") do |on|
  on.message do |channel, message|
    puts "Received #{message} from #{channel}"
  end
end
