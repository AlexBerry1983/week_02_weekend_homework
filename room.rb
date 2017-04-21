class Room

  attr_reader :guest_array
  def initialize
    @guest_array = []
  end

  def add_guest(new_guest)
    @guest_array << new_guest
  end

end