class Comment < ActiveRecord::Base
  belongs_to :idea
  belongs_to :user

  validates :user_id, :presence => true
  validates :idea_id, :presence => true

  def self.rand_question
    questions = [
      ["What skills are needed to make this idea reality?", "The necessary skills are"],
      ["What's a special thing you could do that would push this idea forward?", "I can "],
      ["What do you think you'd learn by seeing this idea to completion?", "I'd learn that"],
      ["What question would you ask your best friend to spark a deep conversation about this idea?",""],
      ["How would you explain this idea to a friend?", ""],
      ["What kind of impact do you think this idea would make on the world?", "The world would be impacted by "],
      ["In your everyday life, what skills or life lessons do you think you'd learn that would be useful to you by helping execute this idea?", "I'd learn"],
      ["How difficult do you think it is to execute this task? What support what make it easier?", "It's difficult to execut this task because"],
      ["What is the essential skill needed to do this idea? What is the best way to practice it?", "The way I'd practice the most essential skill of "],
      ["Make a plan for how you'd make this idea a reality.", "My plan would be to 1. "],
      ["How would you motivate yourself to take this idea to completion?", "I would "],
      ["How in your life might you benefit by helping this project succeed?", "Doing this project would benefit my life by "],
      ["What rules would you set for yourself to make this project succeed", "A rule I'd follow is "],
      ["If you were to do this project, what would be the most interesting part of doing it for you?", "I'm really interested by "],
      ["Help this project out, look on the internet and find an organization that could fund this idea", "Check out "],
      ["Help this project out, find one friend who you think might have something to contribute", "Meet my friend, "],
      ["If you could change one part about this idea, what would you change?", "I'd change "]
    ]
    questions.sample
  end

end
