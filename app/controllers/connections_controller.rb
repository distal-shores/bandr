class ConnectionsController < ApplicationController
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
  end
end
