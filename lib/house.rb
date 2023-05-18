class House
attr_reader :unformatted_price, :address, :rooms
# :price, 

  def initialize(price, address)
    #@price = price
    @unformatted_price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def price
    price = @unformatted_price.gsub("$", "").to_i
  end

  def above_market_average?
    price > 500000
#* Can use '_' to break up long nums. i.e. 500_000
#! Faulty above_market_average? method
#! Need to remove "$" before convert to int
#! Would have caught this with additional test for TRUE
#* Consider making a seperate price-conversion method than calling it when working with 'price'.
  end

  def rooms_from_category(category)
    rooms.select { |room| room.category == category}
  end

  def details
    details = {}
    details["price"] = price
    details["address"] = address
    details
    
    #* OR... {'price' => price, 'address' => @address}
  end


#! Forgot to add the calculate_area method

  def area
    total area = 0
    @rooms.each do |room|
      total_area += room.area
    end
    total_area
  end
#* OR ----
  def area_2
    areas = []
    @rooms.each do | room|
      areas << room.area
    end
    areas. sum
  end

end