class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :survey_id
      t.integer :representative_id

      t.timestamps
    end
  end
end
