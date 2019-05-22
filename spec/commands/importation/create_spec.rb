require 'rails_helper'

RSpec.describe Importation::Create, type: :command do
  subject(:command) { described_class.new importation_source: importation_source }

  let(:importation_source) { double(:importation_source) }

  it 'publishes the just created importation record on success' do
    file = double(:file)
    importation = double(:importation)

    allow(importation_source).to receive(:call) { importation }

    expect { command.call(file: file) }.to publish(:success, importation)
  end

  it 'publishes validation errors on error' do
    record = build(:importation, file: nil)
    command = described_class.new importation_source: importation_source

    allow(importation_source).to receive(:call)
      .with(file: nil)
      .and_raise(ActiveRecord::RecordInvalid.new(record))

    expect { command.call(file: nil) }.to publish(:error, record.errors)
  end
end
