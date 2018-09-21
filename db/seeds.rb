
50.times do 
  profile = Profile.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    quote: Faker::VentureBros.quote,
    about_me: Faker::Community.quotes,
    avatar: Faker::Avatar.image("my-own-slug", "50x50", "png", "set1")
  )
  10.times do
    profile.comments.create(
      post: Faker::BojackHorseman.tongue_twister,
    )
  end
end