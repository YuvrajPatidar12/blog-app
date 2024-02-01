class Article < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true, length: {minimum: 10}
  validates :slug, presence: true
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]
end
