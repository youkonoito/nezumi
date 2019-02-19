User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

users = User.order(:created_at).take(6)
3.times do
  image = open("#{Rails.root}/db/moru.jpg")
  comment = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(image: image, comment: comment) }
end

users = User.order(:created_at).take(6)
3.times do
  image = open("#{Rails.root}/db/nobi.jpg")
  comment = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(image: image, comment: comment) }
end

users = User.order(:created_at).take(6)
3.times do
  image = open("#{Rails.root}/db/hari.jpg")
  comment = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(image: image, comment: comment) }
end
