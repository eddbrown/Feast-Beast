class AddCategoryToFeasts < ActiveRecord::Migration
  def change
    add_column :feasts, :category, :string
  end
end
