class Comment < ApplicationRecord
  # Direct associations

  belongs_to :improvement_plan,
             :required => false

  # Indirect associations

  # Validations

end
