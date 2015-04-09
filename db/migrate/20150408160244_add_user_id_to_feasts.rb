class AddUserIdToFeasts < ActiveRecord::Migration
  def change
    add_reference :feasts, :user, index: true, foreign_key: true
  end
end
