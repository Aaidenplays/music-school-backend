class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.integer :instructor_id

      t.timestamps
    end
  end
end
