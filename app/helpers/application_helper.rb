module ApplicationHelper

	 def rand_question
  	questions = ["How can you help this idea get backing?", "Do you know anyone that can make a website for this idea?", "How could this idea reach more people?"]
  	questions[rand(questions.size)]
  end
end
