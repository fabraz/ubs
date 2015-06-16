class ChangeDataTypeForLatitudeLongitude < ActiveRecord::Migration
  def change
  	change_column :basic_units, :latitude,  :float
  	change_column :basic_units, :longitude,  :float
  end
end
