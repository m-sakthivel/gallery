class AddIsPrivateToUploadPics < ActiveRecord::Migration
  def change
    add_column :upload_pics, :is_private, :boolean
  end
end
