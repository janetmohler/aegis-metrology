class SurveysController < ApplicationController
  before_action :authenticate_user!

  def new
    @survey = Survey.new
  end 

  def edit
    @survey = Survey.find(params[:id])
  end

  def create 
    current_user.surveys.create(survey_params)
    redirect_to user_path(current_user)
  end

  private

    def survey_params
      params.require(:survey).permit(:date, :first_name, :last_name, :company, :project, :question_1, :question_2, :question_3, :question_4, :question_5, :comment, representative_ids:[])
    end

end
