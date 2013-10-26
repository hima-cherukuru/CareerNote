class AchievementsController < ActionController::Base
   layout 'application'

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  	@achievements = Achievement.all
  end
  
  def new
  	@achievement = Achievement.new
  end

	def create
		@achievement = Achievement.new(params[:achievement].permit(:title,:description,:achievement_date))
		if @achievement.save
			redirect_to @achievement, notice: "New achievement created"
		else
			render action: "new"	
		end	
	end

	def show
		@achievement = Achievement.find(params[:id])
		
	end

	def edit
		@achievement = Achievement.find(params[:id])	
	end

	def update
		@achievement = Achievement.find(params[:id])
		if @achievement.update_attributes(params[:achievement].permit(:title,:description,:achievement_date))
		   flash[:notice] = "Successfully updated."
			redirect_to @achievement
		else 
			render :edit
		end	
	end

	def destroy
		@achievement = Achievement.find(params[:id])
		@achievement.destroy
			redirect_to "/achievements"
	end

end
