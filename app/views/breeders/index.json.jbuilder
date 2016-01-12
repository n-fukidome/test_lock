json.array!(@breeders) do |breeder|
  json.extract! breeder, :id, :species_id
  json.url breeder_url(breeder, format: :json)
end
