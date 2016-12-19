class RepresentativesController < ApplicationController

  def new
    @representative = Representative.new
  end

  def create 
    @representative = Representative.create(representative_params)
    redirect_to root_path 
  end

  private

    def representative_params
      params.require(:representative).permit(:first_name, :last_name)
    end
end
