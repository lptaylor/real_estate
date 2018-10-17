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

end
