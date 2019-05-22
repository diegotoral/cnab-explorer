module ImportationSubscriber
  extend self

  def importation_created(importation)
    process_command = Importation::Process.new
    process_command.call(importation: importation)
  end
end
