class Tile
  # attr_accessor :position :mark_type

# Set default values
  def initialize(position)
    @position = position
    @mark_type= ""
  end

# Parameteres are given by the already split input, this function sets position and mark_type of the object
  def fill(given_position, given_type)
    self.position = given_position
    self.mark_type = given_type
  end
end