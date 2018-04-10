# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all 

Post.create([
    {
        title: "Bacon ipsum dolor", 
        content: "Prosciutto ham hock spare ribs beef ribs boudin, buffalo short ribs. Turkey cupim drumstick boudin kevin corned beef.",
        upvotes: 5,
        downvotes: 3 
    }, 
    {
        title: "Cupim sausage t-bone", 
        content: "ball tip jowl frankfurter strip steak landjaeger bresaola fatback ground round pancetta." ,
        upvotes: 27,
        downvotes: 1,

    }, 
    {
        title: "Chuck bacon kevin, ground round",
        content: "cupim ribeye alcatra pork chop shoulder salami chicken short ribs corned beef beef ribs jerky.",
        upvotes: 2,
        downvotes: 8 

    }
])

Post.first.comments.push(Comment.create([ 
    { 
        comment: "This is really bad"
    },
    {
        comment: "Whoopdie freakin doo"
    } 

]))

Post.second.comments.push(Comment.create({ comment: "Yayayayay!" }))

Post.third.comments.push(Comment.create({ comment: "YASS KWEEN" }))

puts "Database has been seeded successfully"