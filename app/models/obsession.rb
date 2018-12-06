class Obsession < ApplicationRecord
  # Direct associations

  belongs_to :stalker,
             :class_name => "User"

  # Indirect associations

  # Validations

end
