class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :remember_digest
      t.boolean :admin
      t.string :activation_digest
      t.boolean :activated
      t.datetime :activated_at
      t.string :reset_digest
      t.datetime :reset_sent_at
      t.integer :total_score
      t.integer :total_fee
      t.integer :purcha_amount

      t.timestamps
    end
    
    add_index :users, :email, unique: true
  end
end
