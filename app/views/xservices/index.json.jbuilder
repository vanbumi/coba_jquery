json.array!(@xservices) do |xservice|
  json.extract! xservice, :id, :name
  json.url xservice_url(xservice, format: :json)
end
