require './lib/room'
require './lib/house'

RSpec.describe House do
  describe "Iteration 2" do
    it "exists" do
      house = House.new("$400000", "123 sugar lane")
      expect(house).to be_a House
    end

    it "it has a price" do
      house = House.new("$400000", "123 sugar lane")

      expect(house.unformatted_price).to eq("$400000")
    end

    it "it has a price" do
      house = House.new("$400000", "123 sugar lane")

      expect(house.address).to eq("123 sugar lane")
    end

    it "it initializes with no rooms" do
      house = House.new("$400000", "123 sugar lane")
#* It IS ok to group diferent attributes into ONE test.
      expect(house.rooms).to eq([])
    end

    it "can add rooms" do
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')

      house.add_room(room_1)
      house.add_room(room_2)

      expect(house.rooms).to eq([room_1, room_2])
    end
  end

  describe "Iteration 3" do
    it "can imform market average" do
      house = House.new("$400000", "123 sugar lane")
#! Faulty above_market_average? method
#! Need to remove "$" before convert to int
#! Would have caught this with additional test for TRUE
      expect(house.above_market_average?).to eq(false)
    end

    it "can filter rooms by category" do
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')

      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)

      expect(house.rooms_from_category(:bedroom))
      .to eq([room_1, room_2])

      expect(house.rooms_from_category(:basement))
      .to eq([room_4])
      # It seemed like these lines should be broken up, but where?
    end

    it "create a hash of house details" do
      house = House.new("$400000", "123 sugar lane")

      expect(house.details)
      .to eq({"price" => 400000, "address" => "123 sugar lane"})
    end

  end
end