class CreateActionSteps < ActiveRecord::Migration
  def change
    create_table :action_steps do |t|
      t.integer :goal_id
      t.text :description
      t.date :target_date
      t.string :resources
      t.string :specs
      t.string :winning
      t.string :lead

      t.timestamps

    end
  end
end
