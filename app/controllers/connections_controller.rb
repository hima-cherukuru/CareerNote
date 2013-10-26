class ConnectionsController < ApplicationController
  # GET /connections
  def index
    @connections = Connection.all
  end

  # GET /connections/1
  def show
    @connection = Connection.find(params[:id])
  end

  # GET /connections/new
  def new
    @connection = Connection.new
  end

  # GET /connections/1/edit
  def edit
    @connection=Connection.find(params[:id])
  end

  # POST /connections
  def create
    @connection = Connection.new(params[:connection])
    if @connection.save
      redirect_to @connection, notice: 'Connection was successfully created.'
    else
      flash[:message] = "All fields must be filled to list a new connection"
      render action: 'new'
    end
  end

  # PUT /connections/1  
  def update
    @connection = Connection.find(params[:id])
    if @connection.update_attributes(params[:connection])
      redirect_to @connection, notice: 'Connection was successfully updated.'
    else
      flash[:message] = "All fields must be filled to successfuly udpate this connection"
      render action: "edit"
    end
  end

  # DELETE /connections/1
  def destroy
    @connection = Connection.find(params[:id])
    @connection.destroy
    redirect_to connections_url
  end
end