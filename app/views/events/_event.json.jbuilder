json.extract! event, :id, :name, :description, :fest_id, :created_at, :updated_at
json.url event_url(event, format: :json)
