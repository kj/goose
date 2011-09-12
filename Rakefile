# Starts web servers.

task :server do
  exec 'rackup -p 9393 config.ru'
end

task :serverdev do
  exec 'shotgun -p 9393 config.ru'
end

# Sets up database for first time use.

task :setup do
  exec 'ruby lib/setup_redis.rb'
end
