class CreateMicroposts < ActiveRecord::Migration[6.1]
  def change
    create_table :microposts do |t|
      t.text :content

      # userテーブルとの紐付け
      t.references :user, type: :integer, null: false, foreign_key: true

      t.timestamps
    end

    add_index :microposts, [:user_id, :created_at]
  end
end
