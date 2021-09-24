class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts, id: :integer do |t|
      t.references :user, type: :integer, null: false, index: true, foreign_key: true
      t.text :body, null: false

      t.timestamps null: false
    end
  end
end
