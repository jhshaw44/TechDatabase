class AddAddressToData < ActiveRecord::Migration
  def change
    add_column :data, :address, :string
  end
end
