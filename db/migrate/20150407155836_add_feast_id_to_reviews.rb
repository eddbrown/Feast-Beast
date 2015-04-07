class AddFeastIdToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :feast, index: true, foreign_key: true
  end
end
