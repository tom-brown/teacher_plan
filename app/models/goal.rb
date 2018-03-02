class Goal < ApplicationRecord
  # Direct associations

  has_many   :action_steps,
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  belongs_to :improvement_plan

  # Indirect associations

  # Validations

end
