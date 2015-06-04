class City < ActiveRecord::Base
	has_many :districts

	validates :city_name, presence: true
end
