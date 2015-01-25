class AddAttachmentAvatarToUploadPics < ActiveRecord::Migration
  def self.up
    change_table :upload_pics do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :upload_pics, :avatar
  end
end
