class CreateProjectRequests < ActiveRecord::Migration
  def change
    create_table :project_requests do |t|
      t.text :summary
      t.date :startDate
      t.string :transactionalBusinessManager
      t.date :goLiveDate

      t.timestamps null: false
    end
  end
end
