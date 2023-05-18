class Room
attr_reader :category, 
            :length, 
            :width, 
            :painted

  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
    @painted = false
  end

  def area
    length * width.to_i
  end

  def is_painted?
    return painted
  end

end
