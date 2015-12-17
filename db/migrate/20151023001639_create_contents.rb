class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :title
      t.string :blurb
      t.string :author
      t.string :image
      t.float :rank

      t.timestamps null: false
    end
  end
end

# <a href='<%= content.url %>'>
#   <p><%= content.blurb %></p>
#   <img src='<%= content.image %>'>
# </a>
