require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class TestGuest < Minitest::Test


  def test_can_create_guest
    guest = Guest.new
    refute_nil(guest)
  end


end