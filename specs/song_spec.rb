require('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class TestSong < Minitest::Test

  def test_can_create_songs
    song = Song.new("Son of a preacher man")
    assert_equal("Son of a preacher man", song.name)
  end







end