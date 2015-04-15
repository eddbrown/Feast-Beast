class AddInstagramUserToFeasts < ActiveRecord::Migration
  def change
    add_column :feasts, :instagram_user, :string
  end
end
