class RepresentativesController < ApplicationController
  before_action :authenticate_user!

  def new
    @representative = Representative.new
  end

  def create 
    @representative = Representative.create(representative_params)
    redirect_to root_path 
  end

  def edit
    @representative = Representative.find(params[:id])    
  end

  def update
    @representative = Representative.find(params[:id])
    @representatie.update_attributes(representative_params)
    redirect_to user_path(current_user)
  end

  def destroy
    @representative = Representative.find(params[:id]).destroy  
    redirect_to user_path(current_user)
  end

  private

    def representative_params
      params.require(:representative).permit(:first_name, :last_name)
    end
end
