class Message < ApplicationRecord
  # Searchkick
  searchkick

  # Relationships
  belongs_to(:church)
  belongs_to(:author, class_name: "User")
  has_many(:tags, as: :taggable, dependent: :destroy)
  has_many(:favorites, dependent: :destroy)
  has_many(:favored_by, through: :favorites, source: :user)

  # Validations
  validates_presence_of(:title, :caption, :content_html, :content_text)
  validates_presence_of(:published_at, if: -> { self.published })

  # Nested form
  accepts_nested_attributes_for(:tags, allow_destroy: true)

  def search_data
    {
      title: self.title,
      caption: self.caption,
      published: self.published,
      published_at: self.published_at,
      created_at: self.created_at,
      updated_at: self.updated_at,
      tags_slug: self.tags.collect(&:slug),
    }
  end

  def author_id=(value)
    super(value)
    self.church_id = self.author.church_id
  end
end
