class Video < ActiveRecord::Base
  attr_accessible :lien, :title

  belongs_to :category_video
end
