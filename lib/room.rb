class Room
attr_reader :category
#            :length, :width, :painted

#* Didn't really need width and length
#* up here becasue Interaction Pattern didn't
#* indicate that we need to access thses vars
#* outside of the Room class. It would have 
#* been better to just use the @ in front of 
#* the vars in the area method thus 
#* referancing the Instance Attributes directly.
#* Same goes for 'painted'

  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
    @painted = false
  end

  def area
    @length * @width.to_i
  end

  def is_painted?
    @painted
  end

  def paint
    @painted = true
  end

end
