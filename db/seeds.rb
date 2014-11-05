# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.create!(
	:author => "J.K. Rowling", 
	:title => "Harry Potter: Chamber of Secrets",
	:year => 1999, 
	:description => "Harry Potter finds love in the Chamber of Secrets", 
	:buy => "http://img2.wikia.nocookie.net/__cb20070328184517/harrypotter/images/thumb/e/e0/Chamber_of_secrets-cover.jpg/150px-Chamber_of_secrets-cover.webp"
	)
