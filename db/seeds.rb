# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jokes = Joke.create([
  {
    description: "A man walks into a bar. Ouch.",
    author: "Unknown",
    category: "Pun",
    rating: 8,
    img_url: "https://cdn.drawception.com/images/panels/2016/2-16/2Wd7jGt1bN-2.png"
  },
  {
    description: "Q: What kind of potato starts arguments?
\n A: An agi-tater.",
    author: "Unknown",
    category: "Pun",
    rating: 6,
    img_url: "https://lh3.googleusercontent.com/-xJ4_62C32wc/WmdOiZiLVFI/AAAAAAAAFOI/IKcGZmsKdws1cfjaT5WsQO0e-OCsUKY5QCJoC/w506-h750/download.jpg"
  }
  ])
