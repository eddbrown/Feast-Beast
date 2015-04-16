class AddIconToFeasts < ActiveRecord::Migration
  def change
    add_column :feasts, :icon, :string
  end
end
