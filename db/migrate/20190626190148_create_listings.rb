class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :title
      t.integer :year
      t.string :make
      t.string :model
      t.string :trim
      t.integer :mileage
      t.string :vin
      t.string :condition
      t.string :exterior_color
      t.string :interior_color
      t.string :engine
      t.string :transmission
      t.string :original_listing_service
      t.string :listing_url
      t.string :description
      t.decimal :price
      t.string :listing_author
      t.string :status
      t.string :image_url

      t.timestamps
    end
  end
end
