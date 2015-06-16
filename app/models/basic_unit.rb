class BasicUnit < ActiveRecord::Base
  belongs_to :city
  belongs_to :address
  belongs_to :district

  validates :latitude, numericality: true
  validates :longitude, numericality: true
  validates :estab_name, presence: true
  validates :phone, numericality: true

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode

  def self.search(search)
  		BasicUnit.find_by_estab_name(search)
  end
end

