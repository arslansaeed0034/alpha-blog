class CategoriesController < ApplicationController
	before_action :authenticate_user_admin!
	before_action :set_category,only:[:preview]

	def preview
		@article_names=@category.articles.pluck(:title)
	end
	def new
		@category = Category.new 
		@article = Article.new 
	end

	def create
		# render plain:params[:article]
		@category = Category.new(category_parms)
		if @category.save
			flash[:notice] = "Article was sucessfully created"
			redirect_to new_category_path	
		else
			render 'new'
		end
	end
	private
	def category_parms
		params.require(:category).permit(:name)
	end
	def set_category
		@category = Category.find(params[:id])
	end
end