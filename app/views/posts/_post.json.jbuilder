json.extract! post, :id, :title, :description, :photo, :tags, :price, :location, :contact_email, :contact_phone, :subcategory_id, :created_at, :updated_at
json.url post_url(post, format: :json)
