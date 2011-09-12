$LOAD_PATH << './lib'
require 'goosedb'

goose_db = GooseDB.new
goose_db.setup_check
