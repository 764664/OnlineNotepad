#! /usr/bin/env ruby
require 'sinatra'
require './config.rb'

#Configure sinatra
set :bind, '0.0.0.0'
set :port, PORT

#Read string from local file.
contentfile = File.new("content", "r+")
content = contentfile.read()
if content == ""
	content = "Empty."
end

get '/' do
  	erb :index, :locals => { :content => content }
end

post '/' do
	content = params[:content]
	contentfile.print(content)
end