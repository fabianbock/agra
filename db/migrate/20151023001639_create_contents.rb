class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :title
      t.string :blurb
      t.string :author
      t.string :image

      t.timestamps null: false
    end
  end
end

