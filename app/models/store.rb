class Store < ApplicationRecord
  validates :name, :owner, presence: true
  validates :name, length: { maximum: 19 }
  validates :owner, length: { maximum: 14 }
end
