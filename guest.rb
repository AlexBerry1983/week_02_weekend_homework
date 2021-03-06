class Guest

  attr_reader :name, :money, :favourite_song
  def initialize(name, money, favourite_song)
    @name = name
    @money = money
    @favourite_song = favourite_song
  end

  def pay_for_drink(drink_cost)
    @money -= drink_cost
  end

  def pay_entry_fee(entry_cost)
    @money -= entry_cost
  end

  def cheer(room)
    for song in room.playlist do
      if song.name == @favourite_song
        return "Wooohoo"
      end
    end
  end



end