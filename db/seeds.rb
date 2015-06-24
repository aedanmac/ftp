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


 dbconn = ActiveRecord::Base.connection_pool.checkout
    raw  = dbconn.raw_connection
   # count = nil

    result = raw.copy_data "COPY incidents FROM STDIN" do

      File.open('db/import.sql', 'r').each do |line|
        raw.put_copy_data line
      end

    end

    #count = dbconn.select_value("select count(*) from #{ttable}").to_i

    ActiveRecord::Base.connection_pool.checkin(dbconn)

   