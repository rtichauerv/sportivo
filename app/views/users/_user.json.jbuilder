json.extract! user, :id, :full_name, :birth, :gender, :created_at, :updated_at
json.url user_url(user, format: :json)
