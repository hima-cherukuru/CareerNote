class PositionsController < ApplicationController
  # GET /positions
  def index
    @positions = Position.all
  end

  # GET /positions/1
  def show
    @position = Position.find(params[:id])
  end

  # GET /positions/new
  def new
    @position = Position.new
  end

  # GET /positions/1/edit
  def edit
    @position=Position.find(params[:id])
  end

  # POST /positions
  def create
    @position = Position.new(params[:position].permit(:job_title,:company,:start_date,:end_date, :current))
    if @position.save
      redirect_to @position, notice: 'Position was successfully created.'
    else
      flash[:message] = "All fields must be filled to list a new position"
      render action: 'new'
    end
  end

  # PUT /positions/1  
  def update
    @position = Position.find(params[:id])
    if @position.update_attributes(params[:position].permit(:job_title,:company,:start_date,:end_date, :current))
      redirect_to @position, notice: 'Position was successfully updated.'
    else
      flash[:message] = "All fields must be filled to successfuly udpate this position"
      render action: "edit"
    end
  end

  # DELETE /positions/1
  def destroy
    @position = Position.find(params[:id])
    @position.destroy
    redirect_to positions_url
  end
end