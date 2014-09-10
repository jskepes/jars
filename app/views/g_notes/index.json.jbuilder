json.array!(@g_notes) do |g_note|
  json.extract! g_note, :id, :cat1, :cat2, :g_note, :g_note_date
  json.url g_note_url(g_note, format: :json)
end
