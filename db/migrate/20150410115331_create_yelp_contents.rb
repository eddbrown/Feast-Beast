class CreateYelpContents < ActiveRecord::Migration
  def change
    create_table :yelp_contents do |t|
      t.string :business_id

      t.timestamps null: false
    end
  end
end
