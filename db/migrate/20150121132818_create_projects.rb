class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :display_name
      t.string :thumb_path
      t.timestamps
    end
  end
end
