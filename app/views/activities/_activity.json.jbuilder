json.extract! activity, :id, :creator_id, :title, :description, :datetime, :location, :places, :price, :category, :created_at, :updated_at
json.url activity_url(activity, format: :json)
