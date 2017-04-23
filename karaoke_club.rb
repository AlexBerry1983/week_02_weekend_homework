class Karaoke_club

  attr_reader :number_of_rooms
  
  def initialize
    @number_of_rooms = []
  end

  def add_room(new_room)
    @number_of_rooms << new_room
  end

end