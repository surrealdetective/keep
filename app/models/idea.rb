class Idea < ActiveRecord::Base
  # attr_accessible :title, :description, :location
  validates :idea, :presence => true
  validates :description, :presence => true
  validates :location, :presence => true
end
