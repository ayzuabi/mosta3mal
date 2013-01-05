class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.string :color
      t.string :type
      t.string :year
      t.string :short_desc
      t.text :long_desc
      t.string :owner

      t.timestamps
    end
  end
end
