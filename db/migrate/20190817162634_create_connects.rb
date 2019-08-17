class CreateConnects < ActiveRecord::Migration[5.2]
  def change
    create_table :connects do |t|
      t.string :user
      t.integer :collection_id
      t.integer :listing_id

      t.timestamps
    end
  end
end
