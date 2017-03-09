# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Default Users: user_name, email, password. 

default_users = [
["thomas", "thomas@gmail.com", "secret"],
["brooklyn", "brooklyn@gmail.com", "secret"]
]

default_users.each do |user_name, email, password|
	User.create(user_name: user_name, email: email, password: password)
end