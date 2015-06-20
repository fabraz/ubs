class MapsController < ApplicationController

	# Generating mapping datapoints
	def map
		@cities = City.all.map { |city| city.name}

        # This one will be the location from the browser
		@ubs_location = BasicUnit.first

		@nearest = @ubs_location.nearbys(2).first

		if params[:city].present?
			@basic_units =  BasicUnit.joins(:city).where(cities: {name: params[:city]})
			@hash = Gmaps4rails.build_markers(@basic_units) do |ubs, marker|
				marker.lat ubs.latitude
				marker.lng ubs.longitude
				marker.title ubs.estab_name
				print ubs.estab_name

			end
		else
			if params[:lat].present? && params[:lng].present?
				@basic_units = BasicUnit.near([params[:lat], params[:lng]], 15)
			
				@hash = Gmaps4rails.build_markers(@basic_units) do |ubs, marker|
					marker.lat ubs.latitude
					marker.lng ubs.longitude
					marker.title ubs.estab_name
					print ubs.estab_name
				end

				print "--------------------------------"
				print @hash.present?
				print "--------------------------------"
			end
		end
	end
end