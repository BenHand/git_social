5.times do
  password = Faker::Internet.password
  user = User.create(
                name: Faker::Name.name, email: Faker::Internet.safe_email,
            password: password, password_confirmation: password,
          github_url: 'www.github.com', linkedin_url: 'www.linkedin.com',
         twitter_url: 'www.twitter.com', facebook_url: 'www.facebook.com',
                blog: 'www.tumblr.com',
            location: "#{Faker::Address.city}, #{Faker::Address.state}",
                 bio: Faker::Lorem.paragraph, image: "https://38.media.tumblr.com/avatar_951b22788b15_128.png")

  4.times do
    forum = Forum.create(topic: Faker::Company.bs, user_id: user.id)

    3.times do
      post = Post.create(title: Faker::Company.catch_phrase,
                          body: Faker::Lorem.paragraph,
                      forum_id: forum.id, user_id: user.id)

      2.times do
        comment = Comment.create(body: Faker::Lorem.sentence,
                              user_id: user.id, post_id: post.id)
      end
    end
  end
end
