class CreateFeasts < ActiveRecord::Migration
  def change
    create_table :feasts do |t|
      t.string :name
      t.integer :rating

      t.timestamps null: false
    end
  end
end
