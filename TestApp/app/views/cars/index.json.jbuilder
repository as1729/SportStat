json.array!(@cars) do |car|
  json.extract! car, :id, :name, :color
  json.url car_url(car, format: :json)
end
