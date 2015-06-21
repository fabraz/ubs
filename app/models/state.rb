class State < ActiveRecord::Base
	has_many :cities

	validates :state_acronym, presence: true, uniqueness: true
	validates :state_name, presence: true, uniqueness: true
end
