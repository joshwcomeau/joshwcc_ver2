class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.text :content
      t.text :abstract
      t.string :title
      t.string :author
      t.integer :min_read
      t.timestamps
    end
  end
end
