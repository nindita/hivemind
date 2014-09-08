3.times do
  Board.create!([
    {name: Faker::App.name, shortcode: Faker::Lorem.word.downcase, description: Faker::Company.bs}
  ])
end
50.times do
  Threadd.create([
    {name: Faker::Hacker.verb + " " + Faker::Hacker.adjective + " " + Faker::Hacker.noun + " thread!", board_id: rand(1..3)}
    ])
end
1000.times do
  Post.create([
    {content: Faker::Hacker.say_something_smart, image: Faker::Avatar.image, threadd_id: rand(1..50)}
    ])
end