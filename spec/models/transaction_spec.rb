require 'rails_helper'

RSpec.describe Transaction, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :cpf }
    it { is_expected.to validate_presence_of :card_number }
  end
end
