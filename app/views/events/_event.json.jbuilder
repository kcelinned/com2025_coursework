json.extract! event, :id, :title, :date, :start, :end, :location, :description, :created_at, :updated_at
json.url event_url(event, format: :json)
