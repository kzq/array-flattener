class Flattener
  attr_accessor :array

  def initialize(array)
    @array = array
  end

  def valid?
    array.is_a?(Array) && array.flatten.all? { |elm| elm.is_a?(Integer) }
  end

  def process
    raise ArgumentError unless valid?
    array.flatten
  end
end