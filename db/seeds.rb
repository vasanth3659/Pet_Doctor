# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user = User.new
user.email = "admin@admin.com"
user.password = "admin@12345"
user.name = "user"
user.address = "1234"
user.city = "Austin"
user.zip = 78753
user.school = "Texas a&m"
user.practice = 12
user.save!

user.add_role "admin"