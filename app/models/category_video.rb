class CategoryVideo < ActiveRecord::Base
  attr_accessible :desc, :nom

  has_many :videos
end
