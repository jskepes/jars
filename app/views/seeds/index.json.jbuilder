json.array!(@seeds) do |seed|
  json.extract! seed, :id, :variety_id, :seed_number, :harvest_days
  json.url seed_url(seed, format: :json)
end
