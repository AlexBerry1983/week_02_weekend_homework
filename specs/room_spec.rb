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
    @guest4 = Guest.new("Tristan", 200, "Sweet Caroline")
    @song1 = Song.new("YMCA")
    @room1 = Room.new()
  end
  
  def test_can_create_rooms
    refute_nil(@room1)
  end

  def test_room_is_empty
    assert_equal(0, @room1.guest_array.count)
  end
  
  def test_can_add_guest
    @room1.add_guest(@guest1)
    assert_equal(1, @room1.guest_array.count)
  end

  def test_can_remove_guest
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.add_guest(@guest3)
    @room1.remove_guest(@guest1)
    assert_equal(2, @room1.guest_array.count)
  end 

  def test_can_add_songs
    @room1.add_song_to_playlist(@song1)
    assert_equal(1, @room1.playlist.count)
  end

  def test_cannot_add_guest_if_guest_array_is_equal_to_3
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.add_guest(@guest3)
    @room1.add_guest(@guest4)
    assert_equal(3, @room1.guest_array.count)
  end

  def test_pay_for_drink
    @guest1.pay_for_drink(10)
    assert_equal(90, @guest1.money)
  end

  def test_react_to_song
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest3)
    @room1.add_song_to_playlist(@song1)

    assert_equal("Wooohoo", @guest3.cheer(@room1))
  end 


end