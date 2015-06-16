class MapsController < ApplicationController

	# Generating mapping datapoints
	def map
		@cities = City.all.map { |city| city.name}

		if params[:city].present?
			@basic_units =  BasicUnit.joins(:city).where(cities: {name: params[:city]})
			@hash = Gmaps4rails.build_markers(@basic_units) do |ubs, marker|
				marker.lat ubs.latitude
				marker.lng ubs.longitude
				marker.title ubs.estab_name
			end
		end
	end

end