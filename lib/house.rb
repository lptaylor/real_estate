require './lib/room'

class House
  attr_reader :price, :address
  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end


end
