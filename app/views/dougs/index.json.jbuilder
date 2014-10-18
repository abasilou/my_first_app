json.array!(@dougs) do |doug|
  json.extract! doug, :id
  json.url doug_url(doug, format: :json)
end
