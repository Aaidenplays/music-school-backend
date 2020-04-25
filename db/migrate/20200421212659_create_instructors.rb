class CreateInstructors < ActiveRecord::Migration[6.0]
  def change
    create_table :instructors do |t|
      t.integer :resource_id

      t.timestamps
    end
  end
end
