class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.integer :instructor_id
      t.integer :student_id
      t.string :user_type


      t.timestamps
    end
  end
end
