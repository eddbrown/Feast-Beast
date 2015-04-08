class AddDescriptionToFeasts < ActiveRecord::Migration
  def change
    add_column :feasts, :description, :text
  end
end
