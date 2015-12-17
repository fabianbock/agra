admin = User.new(
   email:    'admin@example.com',
   password: 'helloworld',
   role:     'admin'
 )
admin.save!

users = User.all

20.times do
   content = Content.create!(
     title:   'Sample Content',
     blurb:  'This is a sample blurb',
     author:  'Joe Schmoe',
     image:   'link here'
   )
   rand(1..5).times { content.votes.create!(value: [-1, 1].sample, user: users.sample) }
end

contents = Content.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Content.count} content pieces created"
puts "#{Vote.count} votes created"
