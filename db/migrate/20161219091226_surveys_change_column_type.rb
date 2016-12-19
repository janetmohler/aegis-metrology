class SurveysChangeColumnType < ActiveRecord::Migration
  
  def change
    change_column :surveys, :comment, :text
  end
end
