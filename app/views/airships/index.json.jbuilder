json.array!(@airships) do |airship|
  json.extract! airship, :id, :ship_code, :ship_type, :capacity
  json.url airship_url(airship, format: :json)
end
