floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
round_down = Proc.new { |floats| floats.floor }
ints = floats.collect(&round_down)
print ints

puts " "

cube = Proc.new { |x| x ** 3 }
print [1, 2, 3].collect!(&cube)
puts " "
print [4, 5, 6].map!(&cube)


=begin
Procs are easy to define!
You just call Proc.new and pass in the block you want to save

The .collect! and .map! methods do the exact same thing.

The & is used to convert the cube proc into a block
(since .collect! and .map! normally take a block)
=end
