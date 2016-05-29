json.array!(@instrumentals) do |instrumental|
  json.extract! instrumental, :id, :name
  json.url instrumental_url(instrumental, format: :json)
end
