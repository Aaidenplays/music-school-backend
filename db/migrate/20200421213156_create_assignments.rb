class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.integer :student_id
      t.integer :instructor_id

      t.timestamps
    end
  end
end
