#! /usr/bin/env ruby
require 'sinatra'
require './config.rb'

#Configure sinatra
set :bind, '0.0.0.0'
set :port, PORT

get '/' do
  	erb :index
end

post '/' do
	content = params[:content]
	puts content
end