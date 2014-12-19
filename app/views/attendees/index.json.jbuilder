json.array!(@attendees) do |attendee|
  json.extract! attendee, :id, :name, :email, :sent
  json.url attendee_url(attendee, format: :json)
end
