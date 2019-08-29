class WelcomeController < ApplicationController
	before_action :authenticate_user_admin!
  def index
  end

  def about
  end
end
