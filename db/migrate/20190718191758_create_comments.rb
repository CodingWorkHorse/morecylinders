class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :user_name
      t.string :user_email
      t.text :body
      t.string :status
      t.string :flag
      t.integer :listing_id

      t.timestamps
    end
  end
end
