require("minitest/autorun")
require("minitest/rg")
require_relative("../bus_lab.rb")
require_relative("../person_lab.rb")

class Bustest < MiniTest::Test

def setup
  passenger1 = Person.new("Tony", 30)
  passenger2 = Person.new("Bert", 10),
  @No14 = Bus.new(14, "The Zoo", [passenger1, passenger2])
end

def test_drive_method()
assert_equal("Brum Brum", @No14.drive)
end

def test_head_count()
  actual = @No14.head_count
  expected = 2
  assert_equal(expected, actual)
end

def test_pick_up_passenger()
  passenger3 = Person.new("Ernie", 8)
  @No14.pick_up(passenger3)
  actual = @No14.head_count
  assert_equal(3, actual)
end

def test_drop_off_passenger()
  @No14.drop_off(@passenger2)
  actual = @No14.head_count
  assert_equal(1, actual)
end


end
