# frozen_string_literal: true
# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end
user1 = User.create!(email: 'hi', password: 'hi', password_confirmation: 'hi')

Poll.create!(option1: "By land", option2: "By sea", user_id:1)
Poll.create!(option1: "Salty", option2: "Sweet", user_id:1)
Poll.create!(option1: "Ben Affleck", option2: "Matt Damon", user_id:1)
Poll.create!(option1: "Belicheck", option2: "Brady", user_id:1)
Poll.create!(option1: "Hot Dog", option2: "Hamburger", user_id:1)
Poll.create!(option1: "South Park", option2: "The Simpsons", user_id:1)
Poll.create!(option1: "Katy Perry", option2: "Taylor Swift", user_id:1)
Poll.create!(option1: "The 80s", option2: "The 90s", user_id:1)
Poll.create!(option1: "Monstars", option2: "Tunesquad", user_id:1)
Poll.create!(option1: "Hop Scotch", option2: "Four Square", user_id:1)
