
class Bus

  attr_reader :route, :destination, :passengers


def initialize(route, destination, passengers = [])
  @route = route
  @destination = destination
  @passengers = passengers
end

def drive()
  return ("Brum Brum")
end

def head_count()
  return @passengers.length

end

end
