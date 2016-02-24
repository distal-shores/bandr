class User < ActiveRecord::Base

  has_secure_password
    has_many :connections
    has_many :passive_connections, :class_name => "Connection", :foreign_key => "connection_id"

    has_many :active_friends, -> { where(connections: { approved: true}) }, :through => :connections, :source => :friend
    has_many :passive_friends, -> { where(connections: { approved: true}) }, :through => :passive_connections, :source => :user
    has_many :pending_friends, -> { where(connections: { approved: false}) }, :through => :connections, :source => :friend
    has_many :requested_connections, -> { where(connections: { approved: false}) }, :through => :passive_connections, :source => :user


    def connections
      active_connections | passive_connections
    end



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

  def unread_messages?
    (unread_messages_count > 0) ? true : false
  end

  #Returns the number of unread messages for this user
  def unread_messages_count
    eval 'messages.count(:conditions => ["recipient_id = ? AND read_at IS NULL", self.user_id)'
  end





end
