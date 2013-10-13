class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :comments

  def next_idea
    ideas
    update_ideas if @ideas.length == 0
    ideas
  end

  def ideas
    @ideas ||= Idea.all
  end

  def update_ideas
    @ideas = Idea.all
  end

  def seen_ideas
    @seen_ideas ||= []
  end
end
