class Comment < ApplicationRecord
  # Direct associations

  belongs_to :goal,
             :required => false

  belongs_to :improvement_plan,
             :required => false

  # Indirect associations

  # Validations

end
