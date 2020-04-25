class CreateUserInstruments < ActiveRecord::Migration[6.0]
  def change
    create_table :user_instruments do |t|
      t.integer :instructor_id
      t.integer :student_id
      t.integer :instrument_id

      t.timestamps
    end
  end
end
