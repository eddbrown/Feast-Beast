class AddInstagramIdToFeasts < ActiveRecord::Migration
  def change
    add_column :feasts, :instagram_id, :integer
  end
end
