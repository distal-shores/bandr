json.array!(@interest_types) do |interest_type|
  json.extract! interest_type, :id
  json.url interest_type_url(interest_type, format: :json)
end
