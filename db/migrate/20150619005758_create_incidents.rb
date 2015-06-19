class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.string :name
      t.string :age
      t.string :gender
      t.string :raceethnicity
      t.string :month
      t.string :day
      t.string :year
      t.string :streetaddress
      t.string :city
      t.string :state
      t.string :cause
      t.string :lawenforcementagency
      t.string :armed

      t.timestamps null: false
    end
  end
end
