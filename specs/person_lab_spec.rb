require("minitest/autorun")
require("minitest/rg")
require_relative("../person_lab.rb")

class Persontest < MiniTest::Test

def setup
  @person1 = Person.new("Garfield", 16)
end

def test_name()
  assert_equal("Garfield", @person1.name)
end

end
