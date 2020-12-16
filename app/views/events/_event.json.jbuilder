json.extract! event, :id, :event, :members, :created_at, :updated_at
json.url event_url(event, format: :json)
