class UploadPic < ActiveRecord::Base
  attr_accessible :imagename, :avatar, :is_private

  has_attached_file :avatar

validates_attachment :avatar, :presence => true,
  :content_type => { :content_type => "image/jpeg" }
end
