class CreateInstructorRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :instructor_requests do |t|
      t.integer :instructor_id
      t.integer :student_id

      t.timestamps
    end
  end
end
