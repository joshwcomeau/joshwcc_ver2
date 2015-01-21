class AddIntegrationToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :integration, :string
  end
end
