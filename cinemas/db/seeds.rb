# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
r1 = Role.create({name: "Regular", description: "Can read items"})
r2 = Role.create({name: "Admin", description: "Can perform any CRUD operation on any resource"})

u1 = User.create({name: "Simbu1", email: "silambarasan.kj@gmail.com", password: "tn2134", password_confirmation: "tn2134", role_id: r1.id})
u2 = User.create({name: "Simbu2", email: "silambarasan.kj2@gmail.com", password: "tn2134", password_confirmation: "tn2134", role_id: r2.id})
u3 = User.create({name: "Simbu3", email: "silambarasan.kj3@gmail.com", password: "tn2134", password_confirmation: "tn2134", role_id: r2.id})
u4 = User.create({name: "Simbu4", email: "silambarasan.kj4@gmail.com", password: "tn2134", password_confirmation: "tn2134", role_id: r1.id})

i1 = Upload.create({description: "Stylish shades", url: 'http://google.com', user_id: u2.id})
i2 = Upload.create({description: "Expensive timepiece", url: 'http://google.com', user_id: u2.id})
i3 = Upload.create({description: "Classy knitwear", url: 'http://google.com', user_id: u3.id})
i4 = Upload.create({description: "Cosy footwear", url: 'http://google.com', user_id: u3.id})