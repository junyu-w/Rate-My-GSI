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
