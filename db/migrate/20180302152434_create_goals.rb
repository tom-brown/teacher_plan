class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :improvement_plan_id

      t.timestamps

    end
  end
end
