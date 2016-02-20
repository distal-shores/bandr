json.array!(@interest_users) do |interest_user|
  json.extract! interest_user, :id
  json.url interest_user_url(interest_user, format: :json)
end
