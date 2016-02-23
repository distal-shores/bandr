class Connection < ActiveRecord::Base

  belongs_to :user
  belongs_to :friend, :class_name => "User"


  def self.request(user_id,friend_id)
    # if status != 'pending' && status != 'accepted' && status != 'declined'

    #Check whehter that particular Userid and Friend ID are already friends or are in Pending Status
      @user = Connection.where("user_id = ? AND friend_id = ?", user_id, friend_id)
      if @user.count == 0 
        #Create a new Connection Request as there is no connection request already
        user=Connection.create(user_id: user_id, friend_id: friend_id, status: 'pending')
        if user 
          flag=true
        end
      else
        flag = false
      end
      return flag

    # end
  end
    # In order to accept the connection must contain the pending status.
    # We then change the status inside of the method to accepted if accepted and declined if declined

    # When the status is accepted, we then add another row where the "user_id" is the friend_id of the current row and vice versa and automatically set it to be accepted.
  def self.accept(id)
    @user = Connection.find(id)
    if @user
      flag=true
      @user.status = 'accepted'
      @user.save
      Connection.create(user_id: @user.friend_id, friend_id: @user.user_id, status: 'accepted')
    else
      flag=false
    end
    return flag
  end

  def decline
    if (status == 'pending') && (current_user.id == user_id)
      status = 'declined'
      Connection.create(user_id: friend_id, friend_id: current_user.id, status: 'declined')
    end
  end


end