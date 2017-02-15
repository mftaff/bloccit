require 'random_data'

50.times do
    Post.create!(
        title: RandomData.random_sentence,
        body: RandomData.random_paragraph
    )
end
posts = Post.all

100.times do
    Comment.create!(
        post: posts.sample,
        body: RandomData.random_paragraph
    )
end

post = Post.find_or_create_by!(title: "unique flavors", body: "I am only one of none")
Comment.find_or_create_by!(body: "Wow! only one!!", post: post)

puts "Seed Finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"