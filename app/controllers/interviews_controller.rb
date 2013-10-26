class InterviewsController < ApplicationController
  # GET /interviews
  def index
    @interviews = Interview.all
  end

  # GET /interviews/1
  def show
    @interview = Interview.find(params[:id])
  end

  # GET /interviews/new
  def new
    @interview = Interview.new
  end

  # GET /interviews/1/edit
  def edit
    @interview=Interview.find(params[:id])
  end

  # POST /interviews
  def create
    @interview = Interview.new(params[:interview].permit(:question,:answer))
    if @interview.save
      redirect_to @interview, notice: 'Interview was successfully created.'
    else
      flash[:message] = "All fields must be filled to list a new interview"
      render action: 'new'
    end
  end

  # PUT /interviews/1  
  def update
    @interview = Interview.find(params[:id])
    if @interview.update_attributes(params[:interview].permit(:question,:answer))
      redirect_to @interview, notice: 'Interview was successfully updated.'
    else
      flash[:message] = "All fields must be filled to successfuly udpate this interview"
      render action: "edit"
    end
  end

  # DELETE /interviews/1
  def destroy
    @interview = Interview.find(params[:id])
    @interview.destroy
    redirect_to interviews_url
  end
end