json.array!(@events) do |event|
  json.extract! event, :id, :event_id, :event_desc, :event_date, :event_category, :user_id, :event_time, :authentication_key
  json.url event_url(event, format: :json)
end
