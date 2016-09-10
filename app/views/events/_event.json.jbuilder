json.extract! event, :id, :nome_evento, :data_evento, :descrição, :created_at, :updated_at
json.url event_url(event, format: :json)