class AddFieldsToBlogPost < ActiveRecord::Migration
  def change
    add_column :blog_posts, :featured, :boolean
    add_column :blog_posts, :subtitle, :string
    add_column :blog_posts, :colour, :string
    add_column :blog_posts, :published, :boolean
    add_column :blog_posts, :published_at, :datetime
  end
end
