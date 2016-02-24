class Location < ActiveRecord::Base
  has_many :users
  geocoded_by :postalcode
  # after_validation :geocode, if: :address_changed?
end
