class AddTwitterIdToFeasts < ActiveRecord::Migration
  def change
    add_column :feasts, :twitter_id, :string
  end
end
