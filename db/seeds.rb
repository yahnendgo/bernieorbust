# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
	Entry.create(fname: 'John', lname: 'Smith', state: "FL", email: 'name@domain.com', ans1: "Vote Green if it's Bernie or Jill", ans2: "Did not select option 2")
end

15.times do
	Entry.create(fname: 'John', lname: 'Smith', state: "VA", email: 'name@domain.com', ans1: "Vote Libertarian", ans2: "Did not select option 2")
end

7.times do
	Entry.create(fname: 'Jane', lname: 'Smith', state: "WA", email: 'name@domain.com', ans1: "Stay Home", ans2: "Did not select option 2")
end

13.times do
	Entry.create(fname: 'Jane', lname: 'Smith', state: "AL", email: 'name@domain.com', ans1: "Write in Bernie", ans2: "Did not select option 2")
end

8.times do
	Entry.create(fname: 'Jane', lname: 'Smith', state: "IL", email: 'name@domain.com', ans1: "Vote Green only if it's Bernie", ans2: "Vote Libertarian")
end

3.times do
	Entry.create(fname: 'John', lname: 'Smith', state: "MI", email: 'name@domain.com', ans1: "Vote Green only if it's Bernie", ans2: "Stay Home")
end

5.times do
	Entry.create(fname: 'John', lname: 'Smith', state: "VT", email: 'name@domain.com', ans1: "Vote Green only if it's Bernie", ans2: "Write in Bernie")
end