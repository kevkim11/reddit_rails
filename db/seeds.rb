# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
prng = Random.new
20.times do
  # User.create!(username: Faker::Internet.user_name,
  #              first_name: Faker::Name.first_name,
  #              last_name: Faker::Name.last_name,
  #              email: Faker::Internet.email)

  # Subreddit.create!(name: Faker::Team.creature,
  #                   description: Faker::Lorem.sentence)

  # Post.create!(title: Faker::Food.dish,
  #              post_type:[0, 1].sample,
  #             user_id: prng.rand(10..20),
  #             subreddit_id: prng.rand(10..15))

  Comment.create!(content: Faker::HarryPotter.quote,
                  user_id: prng.rand(1..20),
                  post_id: prng.rand(11..15))
  # p "created a post!"
end
p "Success!"