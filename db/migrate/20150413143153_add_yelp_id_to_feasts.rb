class AddYelpIdToFeasts < ActiveRecord::Migration
  def change
    add_column :feasts, :yelp_id, :string
  end
end
