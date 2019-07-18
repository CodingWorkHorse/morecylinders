json.extract! comment, :id, :user_name, :user_email, :body, :status, :flag, :listing_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
