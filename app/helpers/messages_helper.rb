module MessagesHelper
  # Message is destroyed when both sender and recipient have marked it 'deleted'
  def mark_message_deleted(id, user_id)
    self.sender_deleted = true if self.sender_id == user_id and self.id == id
    self.recipient_deleted = true if self.recipient_id == user_id and self.id == id
    self.sender_deleted && self.recipient_deleted ? self.destroy : save!
  end
  # Message is marked read if recipient has opened it
  # Mark a message read based on whether or not the recipient has read it yet
  def read?
    self.read_at.nil? ? false : true
  end
end
