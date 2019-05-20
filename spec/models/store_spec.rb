require 'rails_helper'

RSpec.describe Store, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :owner }
    it { is_expected.to validate_length_of(:name).is_at_most(19) }
    it { is_expected.to validate_length_of(:owner).is_at_most(14) }
  end
end
