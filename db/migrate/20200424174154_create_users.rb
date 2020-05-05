class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :user_type
      t.string :avatarURL


      t.timestamps
    end
  end
end
