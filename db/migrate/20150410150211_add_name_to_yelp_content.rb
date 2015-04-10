class AddNameToYelpContent < ActiveRecord::Migration
  def change
    add_column :yelp_contents, :name, :string
  end
end
