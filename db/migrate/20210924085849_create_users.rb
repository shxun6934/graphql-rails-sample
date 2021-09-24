class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users, id: :integer do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :status, null: false, default: 0
      t.string :password_digest
      t.string :remember_digest

      t.timestamps null: false
    end
    add_index :users, :email, unique: true
  end
end
