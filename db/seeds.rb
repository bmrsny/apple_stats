# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
20.times do
  Payload.insert(
                  url: "http://apple.com",
                  referrer: "http://apple.com/about",
                  created_at: Date.today,
                )
end

20.times do
  Payload.insert(
                  url: "https://apple.com",
                  referrer: "http://developer.apple.com",
                  created_at: (Date.today -5)
                )
end
