json.array!(@razors) do |razor|
  json.extract! razor, :id, :name
  json.url razor_url(razor, format: :json)
end
