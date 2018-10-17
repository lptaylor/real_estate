require './lib/room'

class House
  attr_reader :price, :address, :rooms
  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_catagory(type)
    @rooms.select do |room|
      room.catagory == type
    end
  end

  def house_area
    area_array = []
    @rooms.each do |room|
      area_array << room.find_area
    end
    area_array.sum

  end

  def price_per_square_foot
    (@price.delete("$").to_f / house_area.to_f).round(2)
  end
end
