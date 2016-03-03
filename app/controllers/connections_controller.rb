class ConnectionsController < ApplicationController

  before_filter :restrict_access

  def create
    flag=Connection.request(current_user.id, params[:friend_id])
    if flag==true
      flash[:notice] = "Request sent"
      redirect_to(:back)
    else
      flash[:notice] = "Unable to add connection. Connection is already there or in pending state"
      redirect_to(:back)
    end
  end

  def update
    flag=Connection.accept(params[:id])
    if flag == true
      redirect_to(:back)
    else
      flash[:notice] = 'Unable to save connection'
      redirect_to(:back)
    end
  end

  def destroy
    @connection = Connection.find(params[:id])
    @connection.destroy
    flash[:notice] = "Removed connection."
    redirect_to(:back)
  end
end
