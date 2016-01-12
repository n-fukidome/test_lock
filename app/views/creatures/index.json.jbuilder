json.array!(@creatures) do |creature|
  json.extract! creature, :id, :animal_id, :activation_until
  json.url creature_url(creature, format: :json)
end
