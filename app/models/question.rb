class Question < ApplicationRecord
  MAX_LENGTH = 255

  belongs_to :user

  validates :text, :user, presence: true
  validates :text, length: { maximum: MAX_LENGTH }
end
