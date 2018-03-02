class ImprovementPlan < ApplicationRecord
  # Direct associations

  has_many   :goals,
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
