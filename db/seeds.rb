# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(id:"1", name:"aaaa", email:"aaaa@aiit.ac.jp", password:"123456")
User.create(id:"2", name:"bbbb", email:"bbbb@aiit.ac.jp", password:"123456")
User.create(id:"3", name:"cccc", email:"cccc@aiit.ac.jp", password:"123456")
User.create(id:"4", name:"dddd", email:"dddd@aiit.ac.jp", password:"123456")
User.create(id:"5", name:"eeee", email:"eeee@aiit.ac.jp", password:"123456")
User.create(id:"6", name:"ffff", email:"ffff@aiit.ac.jp", password:"123456")
Micropost.create(id:"1", content:"aaaa", user_id:"1")
Micropost.create(id:"2", content:"bbbb", user_id:"2")
Micropost.create(id:"3", content:"cccc", user_id:"3")
Micropost.create(id:"4", content:"dddd", user_id:"4")
Micropost.create(id:"5", content:"eeee", user_id:"5")
Micropost.create(id:"6", content:"ffff", user_id:"6")
Micropost.create(id:"7", content:"aaa2", user_id:"1")
Micropost.create(id:"8", content:"bbb2", user_id:"2")
Micropost.create(id:"9", content:"ccc2", user_id:"3")
Micropost.create(id:"10", content:"ddd2", user_id:"4")
Micropost.create(id:"11", content:"eee2", user_id:"5")
Micropost.create(id:"12", content:"fff2", user_id:"6")
Micropost.create(id:"13", content:"aaa3", user_id:"1")
Micropost.create(id:"14", content:"bbb3", user_id:"2")
Micropost.create(id:"15", content:"ccc3", user_id:"3")
