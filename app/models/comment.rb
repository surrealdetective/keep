class Comment < ActiveRecord::Base
  belongs_to :idea
  belongs_to :user

  validates :user_id, :presence => true
  validates :idea_id, :presence => true

end
