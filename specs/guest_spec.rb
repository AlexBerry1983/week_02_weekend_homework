require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class TestGuest < Minitest::Test

  def setup
    @guest = Guest.new("Alex", 100)
  end
  
  def test_can_create_guest
    refute_nil(@guest)
  end

  def test_guest_has_a_name
    assert_equal("Alex", @guest.name)
  end

  def test_guest_has_money
    assert_equal(100, @guest.money)
  end


end