class AddLatitudeToFeasts < ActiveRecord::Migration
  def change
    add_column :feasts, :latitude, :float
  end
end
