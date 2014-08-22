json.array!(@checkins) do |checkin|
  json.extract! checkin, :id, :title, :location
  json.url checkin_url(checkin, format: :json)
end
