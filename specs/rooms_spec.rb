require("minitest/autorun")
require_relative("../rooms")
require_relative("../guests")
require_relative("../songs")

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new("80s", [], [], 15, [])
    @room2 = Room.new("70s", [], [], 15, [])
    @room3 = Room.new("60s", [], [], 15, [])
    @room4 = Room.new("00s", [], [], 15, [])
    @guest1 = Guest.new("Helen", 20)
    @guest2 = Guest.new("Nick", 55)
    @guest3 = Guest.new("Cat", 33)
    @guest4 = Guest.new("Michael", 25)
    @song1 = Song.new("Hello", "Adele")
    @song2 = Song.new("Why is it so hard?", "Charles Bradley")
    @song3 = Song.new("Acceptable in the 80s", "Calvin Harris")
    @song4 = Song.new("Blah", "Whiskey Town")
  end

  def test_room_has_name
    assert_equal("80s", @room1.name())
  end

  def test_room_starts_empty()
  assert_equal(0, @room2.occupied_length())
  end

  def test_add_guest_to_room
    @room2.add_guest_to_room(@guest2)
    assert_equal(1, @room2.occupied_length())
  end

  def test_remove_guest_from_room
    @room3.add_guest_to_room(@guest3)
    @room3.add_guest_to_room(@guest2)
    @room3.remove_guest_from_room(@guest2)
    assert_equal(1, @room3.occupied_length())
  end

  def test_room_has_no_songs()
  assert_equal(0, @room2.songs_length())
  end

  def test_add_song_to_room
    @room4.add_song_to_room(@song2)
    assert_equal(1, @room4.songs_length())
  end

  def test_room_has_price
    assert_equal(15, @room2.price())
  end
  # def test_room_till_empty
  #   # def test_room_till_empty()
  #   # assert_equal(0, @room2.room_till_empty())
  #   # end
  # end()

  # def test_collect_entrance_fee
  #   @room4.collect_entrance_fee(@guest2.wallet)
  #   assert_equal(15, @room4.till.length())
  # end

end
