User.destroy_all

puts "Creating users"

u1 = User.create! name:'Yanni', email: 'yanni@test.com', password: 'chicken', admin: 'true'

u2 = User.create! name:'Tony', email:'tony@test.com', password: 'chicken', admin:'true'

puts "Created #{ User.count } users."


Review.destroy_all

puts "Creating reviews"

r1 = Review.create! name:'The Best Movie Review Ever!!', movieTitle:'Monty Python and the Holy Grail', movieRating: '97', userReview:'A great laugh for some ages. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'

r2 = Review.create! name:'I Really Liked This Movie', movieTitle:'Monty Python and the Holy Grail', movieRating: '89', userReview: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'

puts "Created #{ Review.count } reviews."


Comment.destroy_all

puts "Creating comments"

c1 = Comment.create! name:'Good Advice', userComment:'This review is written really well! This review is written really well! This review is written really well! This review is written really well!'

c1 = Comment.create! name:'Bad Review', userComment:'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'

puts "Created #{ Comment.count } comments"
