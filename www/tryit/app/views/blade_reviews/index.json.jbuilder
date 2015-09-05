json.array!(@blade_reviews) do |blade_review|
  json.extract! blade_review, :id, :text, :date, :razor_id, :blade_id
  json.url blade_review_url(blade_review, format: :json)
end
