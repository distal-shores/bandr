class User < ActiveRecord::Base

  has_secure_password

  validates :password, length: { minimum: 6 }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

  has_many :connections
  has_many :friends, :through => :connections
  has_many :inverse_connections, class_name: "Connection", foreign_key: "friend_id"
  has_many :inverse_friends, through: :inverse_connections, source: :user

  has_many :received_messages,
    class_name: 'Message',
    primary_key: 'user_id',
    foreign_key: 'recipient_id'

  # def self.from_omniauth(auth)
  #   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  #     user.provider = auth.provider 
  #     user.uid      = auth.uid
  #     user.name     = auth.info.name
  #     user.save
  #   end
  # end

  def full_name
    "#{first_name} #{last_name}"
  end

  def unread_messages?
    (unread_messages_count > 0) ? true : false
  end

  #Returns the number of unread messages for this user
  def unread_messages_count
    eval 'messages.count(:conditions => ["recipient_id = ? AND read_at IS NULL", self.user_id)'
  end


end
