class NosizeError < StandardError
end

class Garden

  attr_reader :trees, :location_conditions
  attr_accessor :size

  def initialize(options = {})
    @trees = []
    @location_conditions = options.fetch(:conditions, []) #array containing key words that match to the conditions collumn
    @size = options.fetch(:size)
    raise NoSizeError, "you must give us a size" if @size.nil?
  end

  def remaining_room
    size - tree_count*5
  end

  def tree_count
    tree.size
  end

  def plant_tree(new_tree)
    trees << new_tree
  end

  def kill_tree()

  end

  def to_s

  end

end
