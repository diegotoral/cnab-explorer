require 'rails_helper'

RSpec.describe ApplicationCommand, type: :command do
  it 'requires subclasses to define #call behavior' do
    expect{ described_class.new.call }.to raise_exception NotImplementedError
  end
end
