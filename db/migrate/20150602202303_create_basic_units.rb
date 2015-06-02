class CreateBasicUnits < ActiveRecord::Migration
  def change
    create_table :basic_units do |t|
      t.float :latitude
      t.float :longitude
      t.references :city, foreign_key: true
      t.integer :cnes_id
      t.string :estab_name
      t.references :address, foreign_key: true
      t.references :district, foreign_key: true
      t.string :phone
      t.string :physical_situation
      t.string :special_needs_situation
      t.string :equips_situation
      t.string :meds_situation

      t.timestamps null: false
    end
  end
end
