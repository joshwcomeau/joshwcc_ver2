class AddTechnicalChallengeToProject < ActiveRecord::Migration
  def change
    add_column :projects, :technical_challenges, :text
    rename_column :projects, :content, :overview
  end
end
