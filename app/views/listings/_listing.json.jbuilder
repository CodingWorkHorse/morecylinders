json.extract! listing, :id, :title, :year, :make, :model, :trim, :mileage, :vin, :condition, :exterior_color, :interior_color, :engine, :transmission, :original_listing_service, :listing_url, :description, :price, :listing_author, :status, :image_url, :created_at, :updated_at
json.url listing_url(listing, format: :json)
