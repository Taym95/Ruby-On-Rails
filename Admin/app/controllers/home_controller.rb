class HomeController < ApplicationController
  def index
  	if current_user
  		redirect_to profil_path
   end
  		
  end
end
