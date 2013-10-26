class KudosController < ApplicationController
  # GET /kudos
  def index
    @kudos = Kudo.where(user_id: current_user.id)
  end

  # GET /kudos/1
  def show
    @kudo = Kudo.find(params[:id])
  end

  # GET /kudos/new
  def new
    @kudo = Kudo.new
  end

  # GET /kudos/1/edit
  def edit
    @kudo=Kudo.find(params[:id])
  end

  # POST /kudos
  def create
    @kudo = Kudo.new(params[:kudo].permit(:content,:connection_id))
    if @kudo.save
      redirect_to @kudo, notice: 'Kudo was successfully created.'
    else
      flash[:message] = "All fields must be filled to list a new kudo"
      render action: 'new'
    end
  end

  # PUT /kudos/1  
  def update
    @kudo = Kudo.find(params[:id])
    if @kudo.update_attributes(params[:kudo].permit(:content,:connection_id))
      redirect_to @kudo, notice: 'Kudo was successfully updated.'
    else
      flash[:message] = "All fields must be filled to successfuly udpate this kudo"
      render action: "edit"
    end
  end

  # DELETE /kudos/1
  def destroy
    @kudo = Kudo.find(params[:id])
    @kudo.destroy
    redirect_to kudos_url
  end
end