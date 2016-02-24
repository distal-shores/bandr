class User < ActiveRecord::Base

  has_secure_password
    has_many :connections
    has_many :passive_connections, :class_name => "Connection", :foreign_key => "connection_id"

    has_many :active_connections, -> { where(connections: { approved: true}) }, :through => :connections, :source => :connection
    has_many :passive_connections, -> { where(connections: { approved: true}) }, :through => :passive_connections, :source => :user
    has_many :pending_connections, -> { where(connections: { approved: false}) }, :through => :connections, :source => :connection
    has_many :requested_connections, -> { where(connections: { approved: false}) }, :through => :passive_connections, :source => :user
    # belongs_to :location


    def connections
      active_connections | passive_connections
    end



  validates :password, length: { minimum: 6 }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  

  # def self.from_omniauth(auth)
  #   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  #     user.provider = auth.provider 
  #     user.uid      = auth.uid
  #     user.name     = auth.info.name
  #     user.save
  #   end
  # end





end
