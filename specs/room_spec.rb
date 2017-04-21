require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')

class RoomTest < Minitest::Test
  def setup
    @guest1 = Guest.new("Alex", 100, "Son of a preacher man")
  end
  
  def test_can_create_rooms
    room = Room.new
    refute_nil(room)
  end

  def test_room_is_empty
    room = Room.new
    assert_equal(0, room.guest_array.count)
  end
  
  def test_can_add_guest
    room = Room.new
    
    room.add_guest(@guest1)
    assert_equal(1, room.guest_array.count)
  end


end