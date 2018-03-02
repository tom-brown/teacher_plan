class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :improvement_plan_id
      t.integer :goal_id

      t.timestamps

    end
  end
end
