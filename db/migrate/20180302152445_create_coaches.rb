class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.integer :user_id
      t.integer :improvement_plan_id

      t.timestamps

    end
  end
end
