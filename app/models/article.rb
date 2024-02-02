class Article < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true, length: {minimum: 10}

  after_save do
    user.add_role :author
  end
  
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]
end
