class Make < ApplicationRecord
  belongs_to :dealer
  validates :model, presence: true
  validates :year, presence: true
  validates :color, presence: true
end
