json.array!(@partnerships) do |partnership|
  json.extract! partnership, :id, :attendee_id, :partner_id, :creaate, :destroy
  json.url partnership_url(partnership, format: :json)
end
