#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'

get '/' do
	@temperature = 22
	@pressure = 1000000

	erb :index
end

post '/camera/refresh' do
	# Take a new photo here
	sleep 1
	"1"
end

post '/led/:led/:status' do

	led = params[:led]
	led = params[:status]

	puts "LED: #{led}, Status: #{status}"

	# Put LED turn on / turn off code here

	sleep 0.1
	"1"
end