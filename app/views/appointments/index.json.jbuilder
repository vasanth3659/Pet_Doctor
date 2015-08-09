json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :appointment_date, :pet, :costumer_name, :requires_remainder, :reason
  json.url appointment_url(appointment, format: :json)
end
