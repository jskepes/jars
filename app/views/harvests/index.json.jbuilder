json.array!(@harvests) do |harvest|
  json.extract! harvest, :id, :plant_id, :date_harvest, :date_jar, :yield
  json.url harvest_url(harvest, format: :json)
end
