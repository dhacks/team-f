json.array!(@foods) do |food|
  json.extract! food, :id, :title, :content, :place, :date
  json.url food_url(food, format: :json)
end
