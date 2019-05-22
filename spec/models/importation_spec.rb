require 'rails_helper'

RSpec.describe Importation, type: :model do
  describe 'validations' do
    it 'requires file to be attached' do
      importation = build(:importation, file: nil)

      expect(importation).not_to be_valid
    end
  end
end
