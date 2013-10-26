class ChallengesController < ApplicationController
  # GET /challenges
  def index
    @challenges = Challenge.all
  end

  # GET /challenges/1
  def show
    @challenge = Challenge.find(params[:id])
  end

  # GET /challenges/new
  def new
    @challenge = Challenge.new
  end

  # GET /challenges/1/edit
  def edit
    @challenge=Challenge.find(params[:id])
  end

  # POST /challenges
  def create
    @challenge = Challenge.new(params[:challenge])
    if @challenge.save
      redirect_to @challenge, notice: 'Challenge was successfully created.'
    else
      flash[:message] = "All fields must be filled to list a new challenge"
      render action: 'new'
    end
  end

  # PUT /challenges/1  
  def update
    @challenge = Challenge.find(params[:id])
    if @challenge.update_attributes(params[:challenge])
      redirect_to @challenge, notice: 'Challenge was successfully updated.'
    else
      flash[:message] = "All fields must be filled to successfuly udpate this challenge"
      render action: "edit"
    end
  end

  # DELETE /challenges/1
  def destroy
    @challenge = Challenge.find(params[:id])
    @challenge.destroy
    redirect_to challenges_url
  end
end