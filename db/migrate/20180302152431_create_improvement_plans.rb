class CreateImprovementPlans < ActiveRecord::Migration
  def change
    create_table :improvement_plans do |t|
      t.integer :user_id
      t.string :state

      t.timestamps

    end
  end
end
