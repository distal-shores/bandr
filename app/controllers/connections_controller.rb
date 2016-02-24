  before_action :set_connection, only: [:show, :edit, :update, :destroy]

  def create
    # if no existing connection
    # @connection = Connection.new
    # @connection.request(current_user.id, params[:friend_id])
    flag=Connection.request(current_user.id, params[:friend_id])
    if flag==true
    # if @connection.save
      flash[:notice] = "Request sent"
      redirect_to users_path
    else
      flash[:notice] = "Unable to add connection. Connection is already there or in pending state"
      redirect_to users_path
    end
  end

  def update
    flag=Connection.accept(params[:id])
    if flag == true
      redirect_to users_path
    else
      flash[:notice] = 'Unable to accept request.'
      redirect_to users_path
    end
  end

  def destroy
    @connection = current_user.connections.find(params[:id])
    @connection.destroy
    flash[:notice] = "Removed connection."
    redirect_to current_user
  end
end
