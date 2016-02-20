json.array!(@band_users) do |band_user|
  json.extract! band_user, :id
  json.url band_user_url(band_user, format: :json)
end
