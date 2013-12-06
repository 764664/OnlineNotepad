#! /usr/bin/env ruby
require 'sinatra'
require './config.rb'

#Configure sinatra
set :bind, '0.0.0.0'
set :port, PORT

#Read string from local file.
contentfile = File.new("content")
content = contentfile.read()
contentfile.close()

get '/' do
  	erb :index, :locals => { :content => content }
end

post '/' do
	content = params[:content]
	contentfile = File.new("content", "w")
	contentfile.print(content)
	contentfile.close()
end