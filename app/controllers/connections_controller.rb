class ConnectionsController < ApplicationController

  before_filter :authenticate_user!

  def index
    @connections = current_user.connections
  end

  def new
    @users = User.all conditions: ["id != ?", current_user.id]
  end

  def create
    invitee = User.find_by_id(params[:user_id])
    if current_user.invite invitee
      redirect_to new_friend_path, notice: "Connection request sent!"
    else
      redirect_to new_friend_path, notice: "Sorry! Could not send connection request!"
    end
  end

  def update
    inviter = User.find_by_id(params[:id])
    if current_user.approve inviter
      redirect_to new_connection_path, notice: "Connection confirmed!"
    else
      redirect_to new_connection_path, notice: "Sorry! Could not connect!"
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
      redirect_to connecitons_path, notice: "Successfully removed connection!"
    else
      redirect_to connections_path, notice: "Sorry, couldn't remove connection!"
    end
  end

end
