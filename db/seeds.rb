# Add admin user and setup your profile

user = User.find_or_create_by(email: 'admin@blog.com') do |user|
  user.password = 'admin123'
  user.profile = Profile.find_or_create_by(
      first_name: 'Admin',
      last_name: 'Blog',
      nickname: 'adminblog',
      birthdate: (Date.today - 20.years),
      about: Faker::Lorem.sentence(20, true, 30),
      picture: Faker::Avatar.image,
      visibility: Profile.visibility.private
  )
  user.save
end

Post.find_or_create_by(
    user: user,
    text: "This is a post with public visibility and all user can see",
    visibility: Post.visibility.public
)
Post.find_or_create_by(
    user: user,
    text: "This is a post with private visibility and only logged in users can see",
    visibility: Post.visibility.private
)

puts '============================== Database seeded! ==============================='