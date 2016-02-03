json.array!(@areas) do |area|
  json.extract! area, :id, :city, :suburb, :postcode
  json.url area_url(area, format: :json)
end
