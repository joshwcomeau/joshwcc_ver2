class AddForeignKeysToImageAndBlogPost < ActiveRecord::Migration
  def change
    remove_column :images, :project_id, :integer
    add_column :images, :imageable_id, :integer
    add_column :images, :imageable_type, :string

    add_index :images, :imageable_id

    add_column :blog_posts, :user_id, :integer
  end
end
