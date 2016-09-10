json.extract! event_place, :id, :name, :city, :estado, :logradouro, :numero, :bairro, :referencia, :created_at, :updated_at
json.url event_place_url(event_place, format: :json)