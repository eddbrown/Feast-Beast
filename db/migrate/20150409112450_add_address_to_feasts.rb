class AddAddressToFeasts < ActiveRecord::Migration
  def change
    add_column :feasts, :address, :string
  end
end
