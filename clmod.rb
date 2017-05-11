module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Dindin
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Dhino
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

a = Dindin.new("Dindin")
b = Dhino.new("Dhino")

puts a.jump
puts b.jump
