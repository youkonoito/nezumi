class CreateMicroposts < ActiveRecord::Migration[5.2]
  def change
    create_table :microposts do |t|
      t.string :image
      t.text :comment
      t.references :user, foreign_key: true
      t.integer :likepoint

      t.timestamps
    end
    add_index :microposts, [:user_id, :created_at]
  end
end
