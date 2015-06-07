class BasicUnit < ActiveRecord::Base
  has_one :city
  has_one :address
  has_one :district

  validates :latitude, numericality: true
  validates :longitude, numericality: true
  validates :estab_name, presence: true
  validates :phone, numericality: true
end
