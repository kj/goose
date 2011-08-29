require 'redis'

class GooseDB
  def initialize
    @goose_db = Redis.new
    @goose_db.select '3'
  end

  def setup_check
    print "Goose will now set up your redis database for first time use.\n"
    print "This will wipe redis database 3!!! Continue? [y/n] " 
    answer = gets.chomp

    if answer == "y"
      first_time_setup
    else
      puts "Exiting without change..."
    end
  end

  def first_time_setup
    puts "Wiping database 3 and setting up initial keys."

    @goose_db.flushdb
    @goose_db.set 'player', '0' # Used for setting player ids in key format "player:id:attribute"
  end
end
