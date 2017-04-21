class Room

  attr_reader :guest_array, :song_array
  def initialize
    @guest_array = []
    @song_array = []
  end

  def add_guest(new_guest)
    @guest_array << new_guest
  end

  def remove_guest(guest_leaving)
    @guest_array.delete(guest_leaving)
  end

  def add_song(new_song)
    @song_array << (new_song)
  end

end