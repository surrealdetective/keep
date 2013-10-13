class Idea < ActiveRecord::Base
  # attr_accessible :title, :description, :location
  validates :title, :presence => true
  validates :description, :presence => true
  validates :location, :presence => true


  def self.rand_idea
  	self.all.sample 	#finds a random idea
  end


end

