class AddFeastIdToYelpContent < ActiveRecord::Migration
  def change
    add_reference :yelp_contents, :feast, index: true, foreign_key: true
  end
end
