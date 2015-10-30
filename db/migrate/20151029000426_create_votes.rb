class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :value
      t.references :content, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :user_id
      t.string :content_id

      t.timestamps null: false
    end
  end
end
