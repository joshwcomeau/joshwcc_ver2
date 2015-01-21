class AddFieldsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :stack, :string
    add_column :projects, :colour, :string
    add_column :projects, :demo_link, :string
    add_column :projects, :github_link, :string
    add_column :projects, :project_type, :string
    add_column :projects, :project_length, :string
  end
end
