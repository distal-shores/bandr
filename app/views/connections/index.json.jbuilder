json.array!(@connections) do |connection|
  json.extract! connection, :id, :user_id, :connection_id, :approved
  json.url connection_url(connection, format: :json)
end
