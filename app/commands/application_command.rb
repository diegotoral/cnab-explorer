class ApplicationCommand
  include Wisper::Publisher

  def call(*args)
    raise NotImplementedError, 'an empty command, commands nothing'
  end
end
