class Room

  attr_reader :guest_array, :playlist
  def initialize
    @guest_array = []
    @playlist = []
    
  end

  def add_guest(new_guest)
    if @guest_array.count < 3
      @guest_array << new_guest
    end
  end

  def remove_guest(guest_leaving)
    @guest_array.delete(guest_leaving)
  end

  def add_song_to_playlist(new_song)
    @playlist << (new_song)
  end

  



end