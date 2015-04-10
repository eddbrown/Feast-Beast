class AddAttachmentImageToFeasts < ActiveRecord::Migration
  def self.up
    change_table :feasts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :feasts, :image
  end
end
