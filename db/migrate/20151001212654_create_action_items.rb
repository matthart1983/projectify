class CreateActionItems < ActiveRecord::Migration
  def change
    create_table :action_items do |t|
      t.text :assignee
      t.integer :project
      t.text :description
      t.date :dueDate

      t.timestamps null: false
    end
  end
end
