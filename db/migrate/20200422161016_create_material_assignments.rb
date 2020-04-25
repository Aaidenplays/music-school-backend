class CreateMaterialAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :material_assignments do |t|
      t.integer :assignment_id
      t.integer :material_id

      t.timestamps
    end
  end
end
