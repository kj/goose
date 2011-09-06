require 'redis'
require 'yaml'

class GooseDB
  def initialize
    @config = YAML.load_file './config/redis.yml'

    @goose_db = Redis.new
    @goose_db.select @config['db_number']
  end

  def setup_check
    print "Goose will now set up your redis database for first time use.\n"
    print "This will wipe redis database #{@config['db_number']}!!! Continue? [y/n] " 
    answer = gets.chomp

    if answer == "y"
      first_time_setup
    else
      puts "Exiting without change..."
    end
  end

  def first_time_setup
    puts "Wiping database #{@config['db_number']} and setting up initial keys."

    @goose_db.flushdb
    @goose_db.set 'player', '0' # Used for setting player ids in key format "player:id:attribute"
  end
end
