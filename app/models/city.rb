class City < ActiveRecord::Base
	has_many :districts
	belongs_to :state

	validates :name, presence: true, uniqueness: true
end
