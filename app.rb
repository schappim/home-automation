#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'

set :bind, '0.0.0.0'
set :port, 80


get '/' do
	
    @temperature = `vcgencmd measure_temp`.gsub('temp=','').gsub("'C","")
	@pressure = 1000000

	erb :index
end

post '/camera/refresh' do
	# Take a new photo here
        puts "="*100
        puts "I'm taking a photo right now"
	puts "="*100	
        `raspistill -t 50 -o ./public/img/photo.jpg -w 640 -h 480`
        #sleep 1
	"1"
end

post '/led/:led/:status' do

	led = params[:led]
	status = params[:status]

	if status == "On"
 		`sudo python ./scripts/on.py`
        else 
		`sudo python ./scripts/off.py`
	end

	puts "\n\n\n\n"
        puts "*"*100
        puts "LED: #{led}, Status: #{status}"
        puts "*"*100
	# Put LED turn on / turn off code here

	sleep 0.1
	"1"
end
