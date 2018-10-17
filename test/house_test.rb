require './lib/house'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class RoomTest < Minitest::Test

  def test_it_exists
    house_1 = House.new("$400000", "123 Sugar Lane")

    assert_instance_of House, house_1
  end

end
