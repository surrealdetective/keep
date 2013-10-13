class Idea < ActiveRecord::Base

  validates :title, :presence => true
  validates :description, :presence => true
  validates :location, :presence => true

  has_many :comments
  has_many :statuses
  has_many :links

  mount_uploader :image, ImageUploader

  def self.rand_idea
  	self.all.sample 	#finds a random idea
  end


end

