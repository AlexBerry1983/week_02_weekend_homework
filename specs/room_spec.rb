require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')
require_relative('../song')

class RoomTest < Minitest::Test
  def setup
    @guest1 = Guest.new("Alex", 100, "Son of a preacher man")
    @guest2 = Guest.new("Paul", 500, "All the single ladies")
    @guest3 = Guest.new("Angus", 1000, "YMCA")
    @song1 = Song.new("YMCA")
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

  def test_can_remove_guest
    room = Room.new
    room.add_guest(@guest1)
    room.add_guest(@guest2)
    room.add_guest(@guest3)
    room.remove_guest(@guest1)
    assert_equal(2, room.guest_array.count)
  end 

  def test_can_add_songs
    room = Room.new
    room.add_song(@song1)
    assert_equal(1, room.song_array.count)
  end

end