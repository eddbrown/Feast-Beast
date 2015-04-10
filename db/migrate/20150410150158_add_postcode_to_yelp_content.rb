class AddPostcodeToYelpContent < ActiveRecord::Migration
  def change
    add_column :yelp_contents, :postcode, :string
  end
end
