# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Group.new(:name => "administradores").save
Group.new(:name => "normales").save
User.new(:email => "admin@admin.com", :password => "adminadmin",:password_confirmation => "adminadmin").save
User.first.update_attribute(:group_id, 1)
User.new(:email => "test@test.com", :password => "testtest", :password_confirmation => "testtest").save
