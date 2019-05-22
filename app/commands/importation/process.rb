class Importation::Process < ::ApplicationCommand
  def call(importation:)
    ImportationChannel.broadcast_to importation, redirect_url: 'http://localhost:3000/stores'
  end
end
