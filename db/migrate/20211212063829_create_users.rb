class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users, id: :integer do |t|
      t.string :name
      t.string :email

      # パスワード
      t.string :password_digest

      # ログイン保持
      t.string :remember_digest

      # 管理者権限
      t.boolean :admin, default: false

      # アカウント有効
      t.string :activation_digest
      t.boolean :activated, default: false
      t.datetime :activated_at

      # パスワードリセット
      t.string :reset_digest
      t.datetime :reset_sent_at

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
