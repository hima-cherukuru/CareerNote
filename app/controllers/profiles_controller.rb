class ProfilesController < ApplicationController
  # GET /profiles
  def index
    @profiles = Profile.all
  end

  # GET /profiles/1
  def show
    @profile = Profile.find(params[:id])
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
    @profile=Profile.find(params[:id])
  end

  # POST /profiles
  def create
    @profile = Profile.new(params[:profile].permit(:user_name,:first_name,:last_name,:linkedin))
    if @profile.save
      redirect_to @profile, notice: 'Profile was successfully created.'
    else
      flash[:message] = "All fields must be filled to list a new profile"
      render action: 'new'
    end
  end

  # PUT /profiles/1  
  def update
    @profile = Profile.find(params[:id])
    if @profile.update_attributes(params[:profile].permit(:user_name,:first_name,:last_name,:linkedin))
      redirect_to @profile, notice: 'Profile was successfully updated.'
    else
      flash[:message] = "All fields must be filled to successfuly udpate this profile"
      render action: "edit"
    end
  end

  # DELETE /profiles/1
  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
    redirect_to profiles_url
  end
end