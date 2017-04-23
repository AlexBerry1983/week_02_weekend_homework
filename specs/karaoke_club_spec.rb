require('minitest/autorun')
require('minitest/rg')
require_relative('../karaoke_club')
require_relative('../room')
require_relative('../guest')

class TestKaraoke_club < Minitest::Test

  def setup
    @club = Karaoke_club.new
    @room1 = Room.new
    @room2 = Room.new
    @room3 = Room.new
    @guest1 = Guest.new("Alex", 100, "Son of a preacher man")
  end

  def test_can_create_club
    refute_nil(@club)
  end

  def test_nil_rooms_at_setup
    @club.number_of_rooms.count
    assert_equal(0, @club.number_of_rooms.count)
  end
  
  def test_add_room
    @club.add_room(@room1)
    @club.add_room(@room2)
    assert_equal(2, @club.number_of_rooms.count)
  end

  def test_pay_entry_fee
    @guest1.pay_entry_fee(10)
    assert_equal(90, @guest1.money)
  end
end