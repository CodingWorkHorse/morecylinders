class CreateCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.string :title
      t.string :description
      t.string :status
      t.string :category
      t.string :collection_author
      t.string :collection_image

      t.timestamps
    end
  end
end
