# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Property.delete_all
Suite.delete_all

ben = User.create(first_name: 'Ben', last_name: 'Zheng', email: 'ben@example.com', company: 'Example Inc.')
john = User.create(first_name: 'John', last_name: 'Doe', email: 'john@workspace.com', company: 'WorkSpace Co.Ltd.')

property1 = Property.create(city: 'Vancouver', address: '731 Granvile St', user: ben)
property2 = Property.create(city: 'Vancouver', address: '800 Hasting St', user: ben)
property3 = Property.create(city: 'Toronto', address: '999 100 Ave', user: john)

Suite.create(price: 1000, location: '1st floor', property: property1)
Suite.create(price: 2000, location: '2nd floor', property: property1)
Suite.create(price: 5000, location: '1st floor', property: property2)
Suite.create(price: 3000, location: '1st floor', property: property3)
