json.array!(@pilots) do |pilot|
  json.extract! pilot, :id, :name, :lastname, :code, :age
  json.url pilot_url(pilot, format: :json)
end
