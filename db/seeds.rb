# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Owner.all.each do |owner|
  owner.destroy
end

Project.delete_all

owner = Owner.new(
  name: Faker::Name.first_name + ' ' + Faker::Name.last_name,
  email: Faker::Internet.email,
  about: Faker::Lorem.paragraph_by_chars(number: 200),

  github: Faker::Internet.url(
    host: 'github.com', scheme: 'https'
  ).sub(/\.\w+\z/, ''),

  linkedin: 'https://www.linkedin.com/in/perez-juanito-23',

  location: [
    Faker::Address.city,
    Faker::Address.state,
    Faker::Address.country,
  ].join(', '),

  password: 'is classified'
)

owner.profile_image.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'profile.png')),
  filename: 'profile.png',
  content_type: 'image/png'
)

if owner.save
  10.times do
    project = owner.projects.build(
      title: Faker::ChuckNorris.unique.fact,
      description: Faker::Lorem.unique.paragraph_by_chars(number: 256),

      repo: Faker::Internet.unique.url(
        host: 'github.com/santiago-rodrig', scheme: 'https'
      ).sub(/\.\w+\z/, ''),

      site: Faker::Internet.unique.url(host: 'example.tech')
    )

    project.demo_image.attach(
      io: File.open(Rails.root.join('app', 'assets', 'images', 'placeholder.jpg')),
      filename: 'placeholder.jpg',
      content_type: 'image/jpeg'
    )

    project.toggle(:active)
    project.save

    if project.valid?
      puts 'PROJECT SAVED'
    else
      puts 'PROJECT NOT SAVED' if project.invalid?
      p project.errors.full_messages
      puts project.repo
    end
  end
end
