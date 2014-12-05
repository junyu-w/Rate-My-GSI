# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

%w(Sam).each do |name|
  Gsi.create! name: name, description: "Hi! I'm Sam, a student studying EECS and education here at Berkeley. As an avid learner (I'm really into edX and online learning) and an enthusiastic teacher (TA'ing for CS61AS right now!) I am super excited for you guys to learn about one of the most powerful frameworks around. In my spare time I enjoy biking, bouldering, and learning new things. This course is going to be awesome, and I hope you're ready to learn a lot!", course: "Ruby on Rails", average_rating: 0, img_url:"../../assets/sam_lau.jpeg"
end
%w(Howard).each do |name|
  Gsi.create! name: name, description: "Hi, I'm Howard, a CS major at UC Berkeley and a software engineer at Salesforce. I love teaching because I love the idea of passing on knowledge, and I also love Computer Science because it is super interesting and fun (or I just might be a huge nerd). In my free time I like to just chill with my friends and catch up on my sleep!", course: "Ruby on Rails", average_rating: 0, img_url:"../../assets/howard_chen.jpeg"
end
%w(Derrick).each do |name|
  Gsi.create! name: name, description: "Hello everyone! I am a third-year majoring in Business and Computer Science. I love building web applications that create social impact. I'm currently working with some of Cal students on an online non-profit initiative that is using design on apparel to generate awareness for causes that deserve more attention. I also love playing basketball and meeting new people. Get ready for an exciting DeCal!", course: "Ruby on Rails", average_rating: 0, img_url:"../../assets/derrick_ma.jpeg"
end
%w(Vincent).each do |name|
  Gsi.create! name: name, description: "Hi guys! I am a 2nd year at Cal studying Computer Science, and I love building tools that solve real-world problems. In my free time, I play strategy board games, trying new things, and having meals with friends.", course: "Ruby on Rails", average_rating: 0, img_url:"../../assets/vincent_tian.jpeg"
end
%w(Jessica).each do |name|
  Gsi.create! name: name, description: "Hey guys! I'm Jessica, a CS and CogSci double here at Cal. I very much enjoy bouldering, playing League, and tickling my puppy in my free time. I am also an aspiring fountain pen collector, so hit me up if you too love fancy, smooth nibs!", course: "Ruby on Rails", average_rating: 0, img_url:"../../assets/jessica_lin.jpeg"
end
%w(Wonjun).each do |name|
  Gsi.create! name: name, description: "Hey! I'm Wonjun, a CS student here at Cal. I'm passionate about helping those in need, especially through utilizing technology. I love meeting new people and spending time with friends doing anything and everything. I hope you're just as excited about this course as I am!", course: "Ruby on Rails", average_rating: 0, img_url:"../../assets/wonjun.jpeg"
end
