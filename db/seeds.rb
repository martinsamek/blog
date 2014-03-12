# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do

  Author.create(:name => Faker::Name.name,
                :age => rand(15..99),
                :email => Faker::Internet.email)

end

5.times do
  Article.create(:title => Faker::Lorem.sentence(1),
                 :content => Faker::Lorem.paragraph(rand(20..500)),
                 :author_id => rand(1..10))
end