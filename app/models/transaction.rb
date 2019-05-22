class Transaction < ApplicationRecord
  belongs_to :store

  validates :cpf, :card_number, presence: true
end
