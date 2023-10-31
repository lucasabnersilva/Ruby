json.extract! sale, :id, :from_user_id, :to_user_id, :pokemon_id, :created_at, :updated_at
json.url sale_url(sale, format: :json)
