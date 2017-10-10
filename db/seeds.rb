# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  Image.create(
    dog_name: "Rupert",
    title: "Playing in the grass",
    url: "http://loremflickr.com/320/240?random=1"
  )

  Image.create(
    dog_name: "Phyllis",
    title: "Having fun",
    url: "http://loremflickr.com/320/240?random=2"
  )

  Image.create(
    dog_name: "Snuffles",
    title: "Loving life",
    url: "http://loremflickr.com/320/240?random=3"
  )
