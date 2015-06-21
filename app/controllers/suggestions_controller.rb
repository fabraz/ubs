class SuggestionsController < ApplicationController

	# GET /suggestions
	def index
	end

	# GET /suggestions/new
	def new
		@suggestion = Suggestion.new
	end

	# POST /suggestions
	def create
	    @suggestion = Suggestion.new(params[:suggestion].permit(:who_suggests, :suggestion_text, :respond_email))
	    if @suggestion.save
	    	redirect_to "/suggestions/thank_you"
	    else
	    end
	end
	
end
