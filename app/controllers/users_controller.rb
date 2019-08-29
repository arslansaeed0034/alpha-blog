class UsersController < ApplicationController
	def new
		@user = User.new
	end	

	def create
		@user = User.new(useer_parms)
		if @user.save
			flash[:success] = "welcome to alpha blog #(@user.username)"
			redirect_to articles_path
		else
			render 'new'
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def show
		@user = User.find(params[:id])
		@users_article = @user.articles.paginate(page: params[:page],per_page:1)
	end
	def index
		@users = User.paginate(page: params[:page],per_page:3)
	end

	def update
		@user = User.find(params[:id])
		if @user.update(useer_parms)
			redirect_to articles_path
		else
			render 'edit'
		end
			
	end

private
	def useer_parms
		params.require(:user).permit(:username,:email,:password)
	end
end
