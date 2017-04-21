require('minitest/autorun')
require('minitest/rg')
require_relative('../karaoke_club')

class TestKaraoke_club < Minitest::Test

 def test_can_create_club
  club = Karaoke_club.new
  refute_nil(club)
 end





end