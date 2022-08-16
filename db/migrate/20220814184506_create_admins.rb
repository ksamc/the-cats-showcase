class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins, id: :uuid do |t|
      t.string :email, null: false, unique: true, index: true
      t.string :password_digest, null: false

      t.timestamps
    end
  end
end
