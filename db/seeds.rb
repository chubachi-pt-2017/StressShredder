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
Micropost.create(id:'1', content:"aaa1", user_id:'1', kubun:'1')
Micropost.create(id:'2', content:"bbb1", user_id:'2', kubun:'1')
Micropost.create(id:'3', content:"ccc1", user_id:'3', kubun:'1')
Micropost.create(id:'4', content:"aaa2", user_id:'1', kubun:'2')
Micropost.create(id:'5', content:"bbb2", user_id:'2', kubun:'2')
Micropost.create(id:'6', content:"ccc2", user_id:'3', kubun:'2')
Micropost.create(id:'7', content:"aaa3", user_id:'1', kubun:'3')
Micropost.create(id:'8', content:"bbb3", user_id:'2', kubun:'3')
Micropost.create(id:'9', content:"ccc3", user_id:'3', kubun:'3')