class Tag < ApplicationRecord
  # Relationships
  belongs_to(:taggable, polymorphic: true)

  # Validations
  validates_presence_of(:name, :slug)

  def name=(value)
    value.strip!
    super(value)
    self.slug = self.name.parameterize if self.name.present?
  end
end
