class User < ActiveRecord::Base

  has_secure_password

  validates :email,
    presence: true

  validates :first_name,
    presence: true

  validates :last_name,
    presence: true

  # validates :password,
  #   length: { in: 6..20 }, on: :create


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider 
      user.uid      = auth.uid
      user.name     = auth.info.name
      user.save
    end
  end



end
