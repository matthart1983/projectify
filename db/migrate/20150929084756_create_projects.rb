class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text :summary
      t.string :customer
      t.string :projectManager
      t.date :startDate
      t.string :transactionalBusinessManager
      t.date :goLiveDate

      t.timestamps null: false
    end
  end
end
