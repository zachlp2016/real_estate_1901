require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require 'pry'

class RoomTest < Minitest::Test

  def setup
      @room = Room.new(:bedroom, 10, 13)
  end

  def test_room_has_a_category
    assert_equal :bedroom, @room.category
  end

  def test_room_can_find_area
    assert_equal 130, @room.area
  end
end

#
#
# pry(main)> room = Room.new(:bedroom, 10, 13)
# #=> #<Room:0x00007fa53b9ca0a8 @category=:bedroom, @length=10, @width=13>
#
# pry(main)> room.category
# #=> :bedroom
#
# pry(main)> room.area
# #=> 130
