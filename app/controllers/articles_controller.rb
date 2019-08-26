class ArticlesController < ApplicationController
	def new
		@article = Article.new 
	end

	def create
		# render plain:params[:article]
		@article = Article.new(article_parms)
		if @article.save
			flash[:notice] = "Article was sucessfully created"
			redirect_to article_path(@article)	
		else
			render 'new'
		end
	end

	def show
		@article = Article.find(params[:id])
	end

	def index
		@article = Article.all
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
		if @article.update(article_parms)
		else
			redirect_to article_path(@article)	
		end
			
	end

	def destroy
		  @article = Article.find(params[:id])
  		  @article.destroy
	end

	private
	def article_parms
		params.require(:article).permit(:title,:description)
	end
end