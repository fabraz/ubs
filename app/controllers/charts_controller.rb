class ChartsController < ApplicationController

	def ubs_density
		@ubs = BasicUnit.all
	end
end
