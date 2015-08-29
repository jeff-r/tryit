json.array!(@notes) do |note|
  json.extract! note, :id, :thing_id, :text
  json.url note_url(note, format: :json)
end
