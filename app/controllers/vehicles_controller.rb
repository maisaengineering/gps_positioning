class VehiclesController < ApplicationController

	def index
		@vehicles = Vehicle.all
		require 'open-uri'
		require 'json'

		result = JSON.parse(open("http://api.reges.se/gps/v1/vehicle").read)
		# raise result.inspect

		result['vehicle'].each do |each_data|
			
			# each_data.save(:id => :name)	
				
			# @name = each_data['id']
			# #raise name.inspect
			
			#Vehicle.create(each_data)
			#Vehicle.remove(_id)
			#v_data =  each_data.replace("\"id\":", "\"name\":")

			remove_id = each_data.delete('id')
			each_data['train_name'] = remove_id
			#raise each_data.inspect
			Vehicle.create(each_data)
		end

	end
end
