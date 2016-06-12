class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:notice] = "Utilisateur supprimé."
    redirect_to users_path
  end
end
