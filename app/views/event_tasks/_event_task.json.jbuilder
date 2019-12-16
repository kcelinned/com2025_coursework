json.extract! event_task, :id, :event_id, :title, :completed, :created_at, :updated_at
json.url event_task_url(event_task, format: :json)
