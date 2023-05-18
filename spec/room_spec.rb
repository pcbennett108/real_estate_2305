require './lib/room'

RSpec.describe Room do
  describe "Iteration 1" do
    it "exists" do
      room = Room.new(:bedroom, 10, '13')
      expect(room).to be_a Room
    end

    it "it has a category" do
      room = Room.new(:bedroom, 10, '13')

      expect(room.category).to eq(:bedroom)
    end

    it "can get area" do
      room1 = Room.new(:bedroom, 10, '13')
      room2 = Room.new(:living_room, 15, '12')

      expect(room1.area).to eq(130)
      expect(room2.area).to eq(180)
    end

    it "checks if room is painted" do
      room1 = Room.new(:bedroom, 10, '13')
      room2 = Room.new(:living_room, 15, '12')

      expect(room1.is_painted?).to be_false
      expect(room2.is_painted?).to be_false

    end

    xit "can paint the room" do
      room1 = Room.new(:bedroom, 10, '13')
      room2 = Room.new(:living_room, 15, '12')

      expect(room1.is_painted?).to be_false
      expect(room2.is_painted?).to be_false
      
      room1.paint
      room2.paint
      
            expect(room1.is_painted?).to be_true
            expect(room2.is_painted?).to be_true
    end





  end
end
