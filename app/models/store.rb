class Store < ApplicationRecord
  belongs_to :importation

  has_many :transactions, dependent: :delete_all

  validates :name, :owner, presence: true
  validates :name, length: { maximum: 19 }
  validates :owner, length: { maximum: 14 }
end
