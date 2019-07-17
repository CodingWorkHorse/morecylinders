class CreateDreamcars < ActiveRecord::Migration[5.2]
  def change
    create_table :dreamcars do |t|
      t.string :user
      t.integer :year
      t.string :trim
      t.string :exterior_color
      t.string :interior_color
      t.string :engine
      t.string :transmisson
      t.decimal :price
      t.string :extra_column

      t.timestamps
    end
  end
end
