class Dahira < ActiveRecord::Base
  belongs_to :region
  has_many :users
  attr_accessible :adresse, :desc, :nom, :photo, :telephone
end
