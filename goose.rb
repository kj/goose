#!/usr/bin/env ruby

require 'sinatra/base'
require 'haml'
require 'sass'
require 'rdiscount'
require 'redis'

class Goose < Sinatra::Base

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
