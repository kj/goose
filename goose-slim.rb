#!/usr/bin/env ruby

# Gems
require 'sinatra/base'
require 'rdiscount'
require 'slim'
require 'sass'

# Goose libraries
require './goosedb'

class Goose < Sinatra::Base

  goose_db = GooseDB.new

  set :slim, pretty: true
  # This makes sure slim HTML output is indented.
  
  set :markdown, layout_engine: :slim

  get '/' do
    haml :index
  end

  get '/style.css' do
    sass :style
  end

end
