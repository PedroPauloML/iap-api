class Church < ApplicationRecord
  # Relationships
  has_many(:users)
  has_many(:profiles)
end
