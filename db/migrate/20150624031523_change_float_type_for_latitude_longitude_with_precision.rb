class ChangeFloatTypeForLatitudeLongitudeWithPrecision < ActiveRecord::Migration
  def change
  	change_column :basic_units, :latitude,  :decimal, :precision => 20, :scale => 13
  	change_column :basic_units, :longitude,  :decimal,:precision => 20, :scale => 13
  end
end
