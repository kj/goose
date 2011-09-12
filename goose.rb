#!/usr/bin/env ruby

$LOAD_PATH << './lib'

# Gems
require 'bundler/setup'
require 'sinatra/base'
require 'rdiscount'
require 'haml'
require 'sass'

# Goose libraries
require 'goosedb'

class Goose < Sinatra::Base

  goose_db = GooseDB.new

  set :root, File.dirname(__FILE__)
  set :markdown, layout_engine: :haml

  get '/' do
    markdown :index
  end

  get '/style.css' do
    sass :style
  end

  # For use with @font-face.
  get '/fonts/:font' do |font|
    send_file './fonts/' + font
  end

end
