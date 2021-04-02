class Profile < ApplicationRecord
  # Relationships
  belongs_to(:user)
  belongs_to(:church)

  # Validations
  validates_presence_of(:name)

  # Callbacks
  before_save(:set_church_reference)

  private

  def set_church_reference
    if self.user
      self.church_id = self.user.church_id
    end
  end
end
