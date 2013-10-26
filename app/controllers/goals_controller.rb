class GoalsController < ApplicationController
  # GET /goals
  def index
    @goals = Goal.all
  end

  # GET /goals/1
  def show
    @goal = Goal.find(params[:id])
  end

  # GET /goals/new
  def new
    @goal = Goal.new
  end

  # GET /goals/1/edit
  def edit
    @goal=Goal.find(params[:id])
  end

  # POST /goals
  def create
    @goal = Goal.new(params[:goal].permit(:title, :description, :target_date, :completed))
    if @goal.save
      redirect_to @goal, notice: 'Goal was successfully created.'
    else
      flash[:message] = "All fields must be filled to list a new goal"
      render action: 'new'
    end
  end

  # PUT /goals/1  
  def update
    @goal = Goal.find(params[:id])
    if @goal.update_attributes(params[:goal].permit(:title, :description, :target_date, :completed))
      redirect_to @goal, notice: 'Goal was successfully updated.'
    else
      flash[:message] = "All fields must be filled to successfuly udpate this goal"
      render action: "edit"
    end
  end

  # DELETE /goals/1
  def destroy
    @goal = Goal.find(params[:id])
    @goal.destroy
    redirect_to goals_url
  end
end