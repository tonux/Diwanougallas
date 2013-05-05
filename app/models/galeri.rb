class Galeri < ActiveRecord::Base
  attr_accessible :desc, :photo, :titre

  mount_uploader :photo, PictureUploader
end
