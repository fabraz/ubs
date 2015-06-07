class CreateParses < ActiveRecord::Migration
  def change
    create_table :parses do |t|

      t.timestamps null: false
    end
  end
end
