class AddUserIdToUploadPics < ActiveRecord::Migration
  def change
    add_column :upload_pics, :user_id, :integer
  end
end
