json.extract! collection, :id, :title, :description, :status, :category, :collection_author, :collection_image, :created_at, :updated_at
json.url collection_url(collection, format: :json)
