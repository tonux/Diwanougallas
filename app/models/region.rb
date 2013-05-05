class Region < ActiveRecord::Base
  attr_accessible :desc, :nom
  has_many :dahiras
end
