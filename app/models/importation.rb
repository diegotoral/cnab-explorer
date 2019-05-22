class Importation < ApplicationRecord
  has_one_attached :file

  validates :file, attached: true
end
