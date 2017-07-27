# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Talker.create(name:'masuda', pass:'masuda' )
Talker.create(name:'ishida', pass:'ishida' )
Talker.create(name:'チリ', pass:'チリ' )
Comment.create(talker_id:'1', ts:'201707190102', kubun:'1', comment:'ぐち' )
Comment.create(talker_id:'1', ts:'201707190102', kubun:'2', comment:'じまん' )
Comment.create(talker_id:'1', ts:'201707190102', kubun:'3', comment:'おいのり' )
Comment.create(talker_id:'2', ts:'201707190102', kubun:'1', comment:'2ぐち' )
Comment.create(talker_id:'2', ts:'201707190102', kubun:'2', comment:'2じまん' )
Comment.create(talker_id:'2', ts:'201707190102', kubun:'3', comment:'2おいのり' )
Comment.create(talker_id:'3', ts:'201707190102', kubun:'1', comment:'3ぐち' )
Comment.create(talker_id:'3', ts:'201707190102', kubun:'2', comment:'3じまん' )
Comment.create(talker_id:'3', ts:'201707190102', kubun:'3', comment:'3おいのり' )