# db/seeds.rb
user1 = User.create(name: '大阪 大', email: 'oosaka@email.com', password: 'password')
user2 = User.create(name: '東京 都', email: 'tokyo@email.com', password: 'password')
user3 = User.create(name: '北海 道', email: 'hokkaido@email.com', password: 'password')

post1 = Post.create(title: '投稿1', content: '最初の投稿', user_id: 1)
post2 = Post.create(title: '投稿2', content: '2つ目の投稿', user_id: 2)
post3 = Post.create(title: '投稿3', content: '3つ目の投稿', user_id: 1)
