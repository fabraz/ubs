class RemoveNumberFromAddresses < ActiveRecord::Migration
  def change
    remove_column :addresses, :number, :string
    remove_column :addresses, :cep, :string
  end
end
