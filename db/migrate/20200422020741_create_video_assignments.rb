class CreateVideoAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :video_assignments do |t|
      t.integer :video_id
      t.integer :assignment_id

      t.timestamps
    end
  end
end
