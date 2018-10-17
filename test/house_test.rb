require './lib/house'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class RoomTest < Minitest::Test

  def test_it_exists
    house_1 = House.new("$400000", "123 Sugar Lane")

    assert_instance_of House, house_1
  end

  def test_you_can_check_price
    house_1 = House.new("$400000", "123 Sugar Lane")
    house_1.price

    assert_equal "$400000", house_1.price
  end

  def test_you_can_check_address
    house_1 = House.new("$400000", "123 Sugar Lane")
    house_1.address

    assert_equal "123 Sugar Lane", house_1.address
  end

  def test_there_are_no_rooms_inital
    house_1 = House.new("$400000", "123 Sugar Lane")
    house_1.rooms.length

    assert_equal 0, house_1.rooms.length
  end

  def test_you_can_add_rooms
    house_1 = House.new("$400000", "123 Sugar Lane")
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)
    house_1.add_room(room_1)
    house_1.add_room(room_2)
    house_1.rooms

    assert_equal [room_1, room_2], house_1.rooms
  end

end
