json.array!(@parking_spots) do |parking_spot|
  json.extract! parking_spot, :id, :street, :city, :state, :zip, :lat, :lon, :side, :spots, :type
  json.url parking_spot_url(parking_spot, format: :json)
end
