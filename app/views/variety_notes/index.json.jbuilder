json.array!(@variety_notes) do |variety_note|
  json.extract! variety_note, :id, :variety_id, :variety_note, :variety_note_date
  json.url variety_note_url(variety_note, format: :json)
end
