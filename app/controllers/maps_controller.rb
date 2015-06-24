class MapsController < ApplicationController

	# Generating mapping datapoints
	def map

		# Get ubs near the User location
		@basic_units = BasicUnit.near([params[:lat], params[:lng]], 50)
		@nearest = @basic_units.first

		# Test if it is working - this will be deleted soon
		@basic_units.each do |ubs|
			print ">>>>>"
			print ubs.estab_name
		end


		# Mark the nearest ubs on the map
		@hash = Gmaps4rails.build_markers(@basic_units) do |ubs, marker|
			marker.lat ubs.latitude
			marker.lng ubs.longitude
			marker.title ubs.estab_name
		end
	end
end