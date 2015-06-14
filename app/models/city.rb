class City < ActiveRecord::Base
	has_many :districts

	validates :name, presence: true, uniqueness: true
end
