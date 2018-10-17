require './lib/room'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class RoomTest < Minitest::Test

  def test_it_exists
    room_1 = Room.new(:bathroom, 5, 7)

    assert_instance_of Room, room_1
  end

  def test_for_type_of_room
    room_1 = Room.new(:kitchen, 10, 12)
    room_1.catagory

    assert_equal :kitchen, room_1.catagory
  end

  def test_find_area
    room_1 = Room.new(:kitchen, 10, 13)
    room_1.find_area

    assert_equal 130, room_1.find_area
  end
end
