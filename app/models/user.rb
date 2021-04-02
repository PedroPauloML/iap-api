require 'bcrypt'

class User < ApplicationRecord
  # users.password_hash in the database is a :string
  include BCrypt

  # Relationships
  belongs_to(:church)
  has_one(:profile, dependent: :destroy)

  # Validations
  validates_presence_of(:email, :password)
  validates_uniqueness_of(:email)
  validates_length_of(:password, minimum: 8)

  # Nested attributes
  accepts_nested_attributes_for(:profile)

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def church_id=(value)
    super(value)

    if self.profile
      self.profile.church_id = self.church_id
    end
  end
end
