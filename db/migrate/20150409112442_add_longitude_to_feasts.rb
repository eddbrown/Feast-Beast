class AddLongitudeToFeasts < ActiveRecord::Migration
  def change
    add_column :feasts, :longitude, :float
  end
end
