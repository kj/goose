#!/usr/bin/env ruby

require 'sinatra/base'
require 'haml'
require 'sass'
require 'rdiscount'
require 'sqlite3'

class Goose < Sinatra::Base

  set :markdown, layout_engine: :haml

  get '/' do
    markdown :index
  end

  get '/style.css' do
    sass :style
  end

end
