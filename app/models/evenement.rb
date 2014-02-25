class Evenement < ActiveRecord::Base
  attr_accessible :date_event, :desc, :lieu, :title
end
