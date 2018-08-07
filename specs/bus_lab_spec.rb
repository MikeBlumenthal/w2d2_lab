require("minitest/autorun")
require("minitest/rg")
require_relative("../bus_lab.rb")

class Bustest < MiniTest::Test

def setup
  @No14 = Bus.new(14, "The Zoo")
end

def test_drive_method()
assert_equal("Brum Brum", @No14.drive)
end




end
