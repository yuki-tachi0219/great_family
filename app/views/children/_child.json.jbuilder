json.extract! child, :id, :first_name, :last_name, :gender, :parent_id, :created_at, :updated_at
json.url child_url(child, format: :json)
