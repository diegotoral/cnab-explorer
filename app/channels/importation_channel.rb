class ImportationChannel < ApplicationCable::Channel
  def create(data)
    create_command = Importation::Create.new

    # Process CNAB file asynchronously.
    create_command.subscribe(ImportationSubscriber, async: true)

    create_command.on(:success) { |importation| stream_for importation }
    create_command.on(:error) { |errors| puts errors.inspect }

    create_command.call(file: data['file_id'])
  end
end
