# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# sql = File.read('db/import.sql')
#     statements = sql.split(/;$/)
#     statements.pop

#     ActiveRecord::Base.transaction do
#       statements.each do |statement|
#         ActiveRecord::Base.connection.execute(statement)
#       end
#     end

User.create(email: 'karmushee@gmail.com', password: 'uiAhpPao011', admin: true, approved: true)
