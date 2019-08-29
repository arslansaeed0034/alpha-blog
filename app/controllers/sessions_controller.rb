class SessionsController < ApplicationController
	
	def new
	end

	def create
		flash.now[:danger] ="There is something wrong"
	end


	def destroy
	end

end
