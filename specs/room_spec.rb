require('minitest/autorun')
require('minitest/rg')
require_relative('../room')

class RoomTest < Minitest::Test

  def test_can_create_rooms
    room = Room.new
    refute_nil(room)
  end


end