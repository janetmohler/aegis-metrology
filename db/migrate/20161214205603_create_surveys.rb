class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|

      t.string :date
      t.string :first_name
      t.string :last_name
      t.string :company 
      t.string :project
      t.string :question_1
      t.string :question_2
      t.string :question_3
      t.string :question_4
      t.string :question_5
      t.text   :comment


      t.timestamps
    end
  end
end
