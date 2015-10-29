class AddPictureIdToLikes < ActiveRecord::Migration
  def change
    add_column :likes, :picture_id, :integer
    add_index :likes, :picture_id
  end
end
