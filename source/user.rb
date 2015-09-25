require_relative 'garden'

class User

  attr_reader :name, :garden

  def initialize(options={})
    @name = options.fetch(:name, "public")
    @garden = Garden.new
  end

end
