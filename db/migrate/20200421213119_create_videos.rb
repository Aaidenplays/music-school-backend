class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.integer :resource_id
      t.integer :student_id
      t.integer :instructor_id


      t.timestamps
    end
  end
end
