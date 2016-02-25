module ConnectionsHelper
  
  def friends_already(user)
    @friends = Connection.where("status = ? AND user_id = ? AND friend_id = ?", 'accepted', current_user.id, user.id)
    if @friends
      return @friends
    end
  end 

  def show_non_friends(user)
    @user = Connection.where("status = ? AND (user_id = ? OR user_id = ?) AND (friend_id = ? OR friend_id = ?)", 'pending', current_user.id, user.id, current_user.id, user.id)
    if @user
      return @user
    end
  end

  def show_pending_friends(user)
    @accept = Connection.where('friend_id = ? AND user_id = ? AND status = ?', current_user.id, user.id, 'pending')
    if @accept
      return @accept
    end
  end

end