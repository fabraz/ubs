class Suggestion < ActiveRecord::Base
	validates :who_suggests, presence: true
	validates :respond_email, presence: true
	validates :suggestion_text, presence: true
end
