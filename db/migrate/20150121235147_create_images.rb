class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.belongs_to :project
      t.string :src
      t.integer :placement
      t.timestamps
    end
  end
end
