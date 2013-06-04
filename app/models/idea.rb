class Idea < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
end
