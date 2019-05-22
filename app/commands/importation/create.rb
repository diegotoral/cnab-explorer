class Importation::Create < ::ApplicationCommand
  attr_reader :importation_source

  def initialize(importation_source: Importation.method(:create!))
    @importation_source = importation_source
  end

  def call(file:)
    importation = importation_source.call(file: file)

    publish(:success, importation)
  rescue ActiveRecord::RecordInvalid => invalid
    publish(:error, invalid.record.errors)
  end
end
