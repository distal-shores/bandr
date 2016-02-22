class ConnectionsController < ApplicationController
<<<<<<< HEAD
  # POST /friendships
  # POST /friendships.json
  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id], approved: "false")
    if @friendship.save
      flash[:notice] = "Friend requested."
      redirect_to :back
    else
      flash[:error] = "Unable to request friendship."
      redirect_to :back
    end
  end

  # PATCH/PUT /friendships/1
  # PATCH/PUT /friendships/1.json
  def update
  @friendship = Friendship.where(friend_id: current_user, user_id: params[:id]).first
  @friendship.update(approved: true)
    if @friendship.save
      redirect_to root_url, :notice => "Successfully confirmed friend!"
    else
      redirect_to root_url, :notice => "Sorry! Could not confirm friend!"
    end
  end

  # DELETE /friendships/1
  # DELETE /friendships/1.json
  def destroy
    @friendship = Friendship.where(friend_id: [current_user, params[:id]]).where(user_id: [current_user, params[:id]]).last
    @friendship.destroy
    flash[:notice] = "Removed friendship."
    redirect_to :back
=======
  before_action :set_connection, only: [:show, :edit, :update, :destroy]

  def create
    @connection = current_user.connections.build(:friend_id => params[:friend_id])
    if @connection.save
      flash[:notice] = "Added connection."
      redirect_to root_url
    else
      flash[:error] = "Unable to add connection."
      redirect_to root_url
    end
  end

  def destroy
    @connection = current_user.connections.find(params[:id])
    @connection.destroy
    flash[:notice] = "Removed friendship."
    redirect_to current_user
>>>>>>> master
  end
end
