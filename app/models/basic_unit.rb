class BasicUnit < ActiveRecord::Base
  has_one :city
  has_one :address
  has_one :district

  validates :latitude, numericality: true
  validates :longitude, numericality: true
  validates :estab_name, presence: true
  validates :phone, numericality: true

  def self.search(search)
  	if search
  		#find(:all, :conditions => ['estab_name LIKE ?', "%#{search}%"])
  		BasicUnit.find_by_estab_name(search)
  	else
  		print "-------------NÃO ACHOU----------------"
  	end
  end
end

