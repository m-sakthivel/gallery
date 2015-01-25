class CreateUploadPics < ActiveRecord::Migration
  def change
    create_table :upload_pics do |t|
      t.string :imagename

      t.timestamps
    end
  end
end
