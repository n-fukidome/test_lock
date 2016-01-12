json.array!(@meals) do |meal|
  json.extract! meal, :id, :breeder_id, :recipted_on
  json.url meal_url(meal, format: :json)
end
