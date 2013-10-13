# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a1 = Idea.create(
  :title       => "Fix concrete cracks", 
  :description => "Learn how to get the materials to DIY so that my neighborhood looks pretty",
  :inspiration => "The Incans did it, so can we.",
  :location    => "New York City"
  )

a2 = Idea.create(
  :title       => "Everyone hugs",
  :description => "Initiate a hugging party in a crowded area",
  :inspiration => "Turn frowns upside down",
  :location    => "New York City"
  )

a3 = Idea.create(
  :title       => "Teach women bike maintenance",
  :description => "Hold a block party where women fix bike on the streets",
  :inspiration => "It's cool to fix bikes, so flaunt it.",
  :location    => "New York City"
  )

a4 = Idea.create(
  :title       => "Give blood to those who need",
  :description => "Hold a blood drive",
  :inspiration => "The community hospital lacks blood",
  :location    => "New York City"
  )

a5 = Idea.create(
  :title       => "Photo-document workers before they enter their office building",
  :description => "What is their expression like? What does this say about our society?",
  :inspiration => "I see it everyday when I go outside. But photos will help me see it in a different way.",
  :location    => "New York City"
  )

ideas = [a1, a2, a3, a4, a5]


  kid = User.new
  kid.password = 'password123'
  kid.email = "kid@gmail.com"
  kid.save

  girl = User.new
  girl.password = 'password123'
  girl.email = "girl@gmail.com"
  girl.save

  boy = User.new
  boy.password = "password123"
  boy.email = "boy@gmail.com"
  boy.save