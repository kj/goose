#!/usr/bin/env ruby

require 'sinatra/base'
require 'slim'
require 'rdiscount'
require 'sqlite3'

class Goose < Sinatra::Base

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
