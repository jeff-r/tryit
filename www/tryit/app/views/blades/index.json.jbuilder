json.array!(@blades) do |blade|
  json.extract! blade, :id, :name
  json.url blade_url(blade, format: :json)
end
