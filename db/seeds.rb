# Add admin user and setup your profile

User.find_or_create_by(email: 'admin@blog.com') do |user|
  user.password = 'admin123'
  user.profile = Profile.find_or_create_by(
      first_name: 'Admin',
      last_name: 'Blog',
      nickname: 'adminblog',
      birthdate: (Date.today - 20.years),
      about: Faker::Lorem.sentence(20, true, 30),
      picture: Faker::Avatar.image
  )
  user.save
end
