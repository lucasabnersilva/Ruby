json.extract! pokemon, :id, :name, :base_experience, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)