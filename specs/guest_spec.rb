require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class TestGuest < Minitest::Test


  def test_can_create_guest
    guest = Guest.new("Alex")
    refute_nil(guest)
  end

  def test_guest_has_a_name
    guest = Guest.new("Alex")
    assert_equal("Alex", guest.name)
  end


end