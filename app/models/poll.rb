class Poll < ApplicationRecord
  belongs_to :user
  # has_many :votes
  validates :user, presence: true
  validates :option1, presence: true
  validates :option2, presence: true
end
