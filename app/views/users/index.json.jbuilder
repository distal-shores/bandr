json.array!(@users) do |user|
  json.extract! user, :id, :username, :first_name, :last_name, :birthdate, :email, :phone_number, :password_digest, :profile_pic_url, :admin
  json.url user_url(user, format: :json)
end
