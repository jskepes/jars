json.array!(@plants) do |plant|
  json.extract! plant, :id, :seed_id, :plant_number, :plant_type, :date_wet, :date_root, :date_dirt, :date_grow, :date_1gal, :date_5gal, :date_12hr
  json.url plant_url(plant, format: :json)
end
