# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


admin = User.new(
   email:    'admin@example.com',
   password: 'helloworld',
   role:     'admin'
 )
 admin.save!

50.times do
   content = Content.create!(
     title:   'Sample Content',
     blurb:  'This is a sample blurb',
     author:  'Joe Schmoe',
     image:   'link here'
   )
end
puts "Seed finished"