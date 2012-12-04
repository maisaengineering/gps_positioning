class VehiclesController < ApplicationController

	def index
		require 'open-uri'
		require 'json'

		result = JSON.parse(open("http://api.reges.se/gps/v1/vehicle").read)
		# raise result['vehicle'].inspect
		result['vehicle'].each do |each_data|
			#raise each_data.inspect
			Vehicle.create(each_data)
		end
	end
end
