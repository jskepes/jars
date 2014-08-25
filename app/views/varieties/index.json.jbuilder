json.array!(@varieties) do |variety|
  json.extract! variety, :id, :name, :breeeder, :mom_id, :dad_id
  json.url variety_url(variety, format: :json)
end
