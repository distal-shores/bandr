class User < ActiveRecord::Base

  # mount_uploader :image, ImageUploader
  has_secure_password

  # has_many :connections
  # has_many :passive_connections, :class_name => "Connection", :foreign_key => "connection_id"

  # has_many :active_connections, -> { where(connections: { approved: true}) }, :through => :connections, :source => :connection
  # has_many :passive_connections, -> { where(connections: { approved: true}) }, :through => :passive_connections, :source => :user
  # has_many :pending_connections, -> { where(connections: { approved: false}) }, :through => :connections, :source => :connection
  # has_many :requested_connections, -> { where(connections: { approved: false}) }, :through => :passive_connections, :source => :user
  # belongs_to :location

  validates :password, length: { minimum: 6 }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :postalcode, presence: true
  validates_format_of :postalcode, with: /\A([ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1})\Z/i, on: :create
  validates :description, length: { minimum: 0,
                                    maximum: 300 }


  has_many :connections
  has_many :friends, through: :connections
  has_many :inverse_connections, class_name: "Connection", foreign_key: "friend_id"
  has_many :inverse_friends, through: :inverse_connections, source: :user

  has_many :received_messages, class_name: 'Message', primary_key: 'user_id', foreign_key: 'recipient_id'

  has_and_belongs_to_many :interests

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

  def assign_icons
    if self.interests[2][:name] == 'keyboard'
      return '/assets/keyboard.png'
    elsif self.interests[2][:name] == 'vocals'
      return '/assets/microphone.png'
    elsif self.interests[2][:name] == 'synthesizer'
      return '/assets/synthesizer.png'
    else
      return '/assets/volume-off.png'
    end
  end

  # def connections
  #   active_connections | passive_connections
  # end

end
