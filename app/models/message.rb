class Message < ActiveRecord::Base
  belongs_to :sender,
  class_name: 'User',
  primary_key: :user_id,
  foreign_key: :sender_id

  belongs_to :recipient,
  class_name: 'User',
  primary_key: :user_id,
  foreign_key: :recipient_id

  def self.readingmessage(id, reader)
    # binding.pry
    message = Message.where("sender_id = ? OR recipient_id = ?", reader, reader)
    binding.pry
    if message.read_at.nil? && (message.recipient.user_id == reader)
      message.read_at = Time.now
      message.save!
    end
    message
  end
end
