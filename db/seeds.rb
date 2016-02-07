# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Fandoms:
#
# fandoms = Fandom.create([{ name: 'Doctor Who', category: 'TV'}])
#Doctor_Who = Fandom.create(name:'Doctor Who', category: 'TV')		Already in db
#Supernatural = Fandom.create(name: 'Supernatural', category: 'TV')		Already in database
#Sherlock = Fandom.create(name: 'Sherlock', category: 'TV') 		#Already in db
#
#Characters
#
Sherlock_Characters = Character.create([{name: 'Sherlock Holmes', fandom: Sherlock}, {name: 'John Watson', fandom: Sherlock}, {name: 'Mrs. Hudson', fandom: Sherlock}])
Supernatural_Characters = Character.create([{name: 'Dean Winchester', fandom: Supernatural}, {name: 'Sam Winchester', fandom: Supernatural}, {name: 'Castiel', fandom: Supernatural}])