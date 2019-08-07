class CreateBlogposts < ActiveRecord::Migration[5.1]
  def change
    create_table :blogposts do |t|
      t.text :title
      t.text :content

      t.timestamps
    end
  end
end
