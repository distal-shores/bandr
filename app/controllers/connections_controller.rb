class ConnectionsController < ApplicationController

  before_filter :authenticate_user!

  def index
    @connections = current_user.connections
  end

  def new
    @users = User.all conditions: ["id != ?", current_user.id]
    %ul
  - for user in @friends
    %li
      - if current_user.friend_with? user
        = user.email
        |
        You are already friends!
      - elsif current_user.invited? user
        = user.email
        |
        Pending request ...
      - elsif user.invited? current_user
        = user.email
        |
        = link_to "Confirm friend?", friend_path(user), :method => "put"
      - else
        = user.email
        |
        = link_to "Add friend?", friends_path(:user_id => user), :method => "post"
  end

  def create
    invitee = User.find_by_id(params[:user_id])
    if current_user.invite invitee
      redirect_to new_friend_path, notice: "Connection request sent."
    else
      redirect_to new_friend_path, notice: "Sorry, could not send connection request."
    end
  end

  def update
    inviter = User.find_by_id(params[:id])
    if current_user.approve inviter
      redirect_to new_connection_path, notice: "Connection confirmed."
    else
      redirect_to new_connection_path, notice: "Sorry, could not connect."
    end
  end

  def requests
    @pending_requests = current_user.pending_invited_by
  end

  def invites
    @pending_invites = current_user.pending_invited
  end

  def destroy
    user = User.find_by_id(params[:id])
    if current_user.remove_connection user
      redirect_to connecitons_path, notice: "Successfully removed connection."
    else
      redirect_to connections_path, notice: "Sorry, couldn't remove connection."
    end
  end

end
