json.array!(@plant_notes) do |plant_note|
  json.extract! plant_note, :id, :plant_id, :plant_note, :plant_note_date
  json.url plant_note_url(plant_note, format: :json)
end
