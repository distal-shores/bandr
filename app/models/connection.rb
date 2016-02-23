class Connection < ActiveRecord::Base

  belongs_to :user
  belongs_to :friend, :class_name => "User"


  def request(user_id,friend_id)
    # if status != 'pending' && status != 'accepted' && status != 'declined'
    # binding.pry
      Connection.create(user_id: user_id, friend_id: friend_id, status: 'pending')
    # end
  end
    # In order to accept the connection must contain the pending status.
    # We then change the status inside of the method to accepted if accepted and declined if declined

    # When the status is accepted, we then add another row where the "user_id" is the friend_id of the current row and vice versa and automatically set it to be accepted.
  def accept
    if (status == 'pending') && (current_user.id == user_id)
      status = 'accepted'
      Connection.create(user_id: friend_id, friend_id: current_user.id, status: 'accepted')
    end
  end

  def decline
    if (status == 'pending') && (current_user.id == user_id)
      status = 'declined'
      Connection.create(user_id: friend_id, friend_id: current_user.id, status: 'declined')
    end
  end


end