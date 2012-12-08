class VehiclesController < ApplicationController

	require 'open-uri'
	require 'json'
	
	def index		
		result = JSON.parse(open("http://api.reges.se/gps/v1/vehicle").read)

		result['vehicle'].each do |each_data|
			# raise result.inspect
			remove_id = each_data.delete('id')
			each_data['train_name'] = remove_id
			#raise each_data.inspect
			Vehicle.create(each_data)	
			# raise each_data.inspect	
		end
		@vehicles = Vehicle.all	
	end
end
