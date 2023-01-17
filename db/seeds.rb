# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Seeding Authors"
authors = Author.create([
    {
        name: "John Doe",
        photo: "https://picsum.photos/200/300",
        bio:"I am a software developer"
    },
    {
        name: "Jane Doe",
        photo: "https://picsum.photos/200/300",
        bio:"I am a software developer"
    },
    {
        name: "John Smith",
        photo: "https://picsum.photos/200/300",
        bio:"I am a software developer"
    }

])

puts "Seeding Categories"

categories = Category.create([
    {
        name: "Technology"
    },
    {
        name: "Sports"

    }
])


puts "Seeding Posts"

posts = Post.create([
    {
        title: "Post 1",
        content:"This is the content of post 1",
        featured_image: "https://picsum.photos/200/300",
        featured_post: true,
        category_id: 1,
        author_id: 1,
    },
    {
        title: "Post 2",
        content:"This is the content of post 2",
        featured_image: "https://picsum.photos/200/300",
        featured_post: true,

        category_id: 2,

        author_id: 2,
    }

])


puts "Seeding Comments"

comments = Comment.create([
    {
        name: "John Doe",
        email: "John@gmail.com",
        comment: "This is a comment",
        post_id: 1
    },
    {
        name: "Jane Doe",
        email: "guhy@gmail.com",
        comment: "This is a comment",
        post_id: 2

    }


])

puts "Seeding Done"
